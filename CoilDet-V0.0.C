///////////////////////////////////////////////////
//车检板检测单片机程序
//单片机型号:PIC18F45K80 TQFP 
//电压:5.0V  晶振频率:8.000MHZ  PLL:开启
//作者:陈宗仁  
//时间:2013年05月30日
///////////////////////////////////////////////////
#include <PIC18F45K80.h>
#include <htc.h>
#include "CAN.H"
#include "SIN.H"

#include "mcu.h"
#include "CoilDet.H"

//#include <math.h>

#define true 1
#define false 0

#define TIME500MS 100 //500ms定时 计数值(非定时器)
#define TIME1S 2 //1s定时 计数值(非定时器)
#define MAXADBUFNUM 10 //最大的AD数据缓冲区数目(计算平均值用)
#define FLASHCONT 20 //信号灯闪灯时间计数

#define STA_MECH_ON 0X01 //开机状态
#define STA_CAN_OK 0X02 //CAN 通信正常
#define STA_MASTER_OK 0X03 //主板数据就绪正常
#define STA_LAMP_OK 0X04 //接收到新的灯色命令状态
#define STA_MASTER_ERR 0X05 //主机错误状态


#define CAN_TIMEOUT 100 //CAN总线通信超时计数
#define MASTER_TIMEOUT 250 //主板通信超时计数





bit time5ms = false; //5ms定时标志位
bit time0_int = false;//TIMER 0 中断标志位
bit time3_int = false;//TIMER 3 中断标志位
bit DT_read = false; //模拟通信口是否处于读模式
bit DT_Send = false; //数据传输是否处于主机协议发送阶段
bit DTSync = false;//用于指示是否收到一组完整的同步码(0x11 0x22 0x33 0x44 0x55)
bit DTFrame = false; //用于指示是否收到一帧完整的数据帧

unsigned char DT_sync_buf[5] = {0,0,0,0,0}; //用于保存判断数据传输接收的同步码
unsigned char DT_command = 0xff; //数据传输命令字
unsigned char DT_data_counter = 0x00;//数据传输参数长度
unsigned char DT_data[18] ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; //数据参数缓冲区
unsigned char SPI_send_p=0x00;


//FOR SPI TEST 
unsigned char DT_data1[18] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; //欲发送的传输数据缓冲区
unsigned char DT_timeout = 0x00;
unsigned char DT_data_p = 0x00;

///////////////////////////////////////////////////////
//CAN通信协议解析用到的定义
#define CANNOREPLY 0x00 //帧不需要回复
#define CANRQREPLY 0x01  //帧请求重发
#define CANCONFIRM 0x02 //帧接收确认
#define CANFBACK 0x03  //备用

#define CANREADID 0X00 //读取模块/板卡的ID
#define CANWRITEID 0X01 //写入模块/板卡的ID

#define CANCOMWLDD 0x02 //主板往灯控板写入灯色显示数据
#define CANCOMWCOF 0x03 //主板往灯控板写入配置数据
#define CANCOMRLD 0x04 //主板请求灯控板发送灯泡检测数据
#define CANCOMRLI1 0x05 //主板请求灯控板发送1 3 4通道电流数据
#define CANCOMRLI2 0x06 //主板请求灯控板发送6 7 8通道电流数据
#define CANCOMRLI3 0x07 //主板请求灯控板发送10 12通道电流数据
#define CANCOMRTEMP 0x08 //主板请求灯控板发送片载温度检测数据

#define CANCARSTATE 0x02 //主板请求检测器发送16个通道的车辆检测状态
#define CANVELOCITY1 0x03 //主控板请求检测器发送1-4组测速线圈的平均速度
#define CANVELOCITY2 0x04 //主控板请求检测器发送5-8组测速线圈的平均速度
#define CANSENSLV1 0x05 //主控板请求检测器发送1-8通道检测器的检测灵敏度等级
#define CANSENSLV2 0x06 //主控板请求检测器发送9-16通道检测器的检测灵敏度等级
#define CANCOILSTATE1 0x07 //主控板请求检测器发送1-4组测速线圈的绑定情况
#define CANCOILSTATE2 0x08 //主控板请求检测器发送5-8组测速线圈的绑定情况
#define CANCOILDISTANCE1 0x09 //主控板请求检测器发送1-4组测速线圈的线圈距离
#define CANCOILDISTANCE2 0x0a //主控板请求检测器发送5-8组测速线圈的线圈距离
#define CANSETSENSLV1 0x0b //主控板发送1-8通道灵敏度等级设置给检测器
#define CANSETSENSLV2 0x0c //主控板发送9-16通道灵敏度等级设置给检测器
#define CANSETCOILSTATE1 0x0d //主控板发送1-4组测速线圈的绑定数据给检测器板
#define CANSETCOILSTATE2 0c0e //主控板发送5-8组测速线圈的绑定数据给检测器板
#define CANSETCOILDISTANCE1 0x0f //主控板发送1-4组测速线圈的线圈距离给检测器板
#define CANSETCOILDISTANCE2 0x10 //主控板发送5-8组测速线圈的线圈距离给检测器板
#define CANDETECTSTATE 0x11 //主控板请求检测器发送16个通道的检测器工作状态
#define CANREDSENS1 0x12 //主控板请求检测器发送1-7级的灵敏度数值
#define CANREDSENS2 0x13 //主控板请求检测器发送8-14级的灵敏度数值
#define CANREDSENS3 0x14 //主控板请求检测器发送15-16级的灵敏度数值
#define CANSETSENS1 0x15 //主控板下发1-7级的灵敏度数值给检测器
#define CANSETSENS2 0x16 //主控板下发8-14级的灵敏度数值给检测器
#define CANSETSENS3 0x17 //主控板下发15-16级的灵敏度数值给检测器
#define CANFREQUENCYSTATE 0x18 //主控板请求检测器发送16个通道的震荡频率设置
#define CANSETFREQUENCY 0x19 //主控板发送给检测器16个通道的震荡频率设置
#define CANWORKMOD 0x1a //主控板设置检测器的工作方式

//////////////////////////////////////////////////////////////////////////////
//单片机间数据传输DT(data transport)用到的定义
#define DTRdDETECTED 0x00 //主设备读取从设备8个通道的检测结果
#define DTRSTATE 0x01 //主设备读取从设备8个通道的通道状态
#define DTRSENSLV 0x02 //主设备读取从设备8个通道的灵敏度等级
#define DTRFREQUENCY 0x03 //主设备读取从设备8个通道的震荡设置
#define DTRSENS 0x04 //主设备读取从设备灵敏度表
#define DTWSENSLV 0x05 //主设备写入从设备8个通道的灵敏度等级
#define DTWFREQUENCY 0x06 //主设备写入从设备8个通道的震荡频率设置值
#define DTWSENS 0x07 //主设备写入从设备灵敏度表
#define DTREST 0xaa  //主设备下发复位命令，让从设备复位重启

unsigned char DT_SDdata_counter = 0xff;//数据传输发送参数长度

//////////////////////////////////////////////////////
unsigned int eeprom_addr = ADDR_SENS_LV;
unsigned char eeprom_num = NUM_SENS_LV;

unsigned char my_addr = 0x00; //暂存板卡的地址
unsigned char my_config = 0x00; //板卡的配置数据
unsigned char t1_cont = 0; //T1定时器中断次数计数器

unsigned char t500ms_count =0;
///////////////////////////////////////////////////////////////////////
//////检测用到
#define MAXCH 8  //最大通道数量
#define AVEBUFNO 10 //平滑缓冲区大小
#define DETTIMEOUT 20000 //检测超时时间 DETTIMEOUT*0.5us
#define CHOK   0x00 //通道状态正常
#define CHOSCSTOP 0X01 //通道停振
#define CHNOCOIL 0X02 //通道无线圈连接
#define MAXOSCDEV 400 //震荡频率最大偏移量
#define NOISEVAL 800 //噪声 震荡中偶然出现的噪声系数


#define TIMEOUT_TIMER 300 //通道超时时间

unsigned  int ch_timeout_timer[MAXCH] = {0,0,0,0,0,0,0,0}; //每个通道的有车时间计数


unsigned int det_pluse_counter[MAXCH] = {0,0,0,0,0,0,0,0}; //8个通道脉冲数量存储
unsigned char det_pluse_counter_h[MAXCH] = {0,0,0,0,0,0,0,0},det_pluse_counter_l[MAXCH] = {0,0,0,0,0,0,0,0};//TMR3的计数初值
unsigned int det_timer_counter_buf[MAXCH][AVEBUFNO]; //8个通道 每个通道10个时间计数缓冲区
unsigned int det_timer_average[MAXCH] ={0,0,0,0,0,0,0,0};//8个通道的平均值
unsigned int det_timer_base[MAXCH] ={0,0,0,0,0,0,0,0};//8个通道的计数基值
unsigned char det_current_sens[MAXCH] = { 10,10,10,10,10,10,10,10}; //每个通道的当前灵敏度
unsigned char det_current_sens_lv[4] = {0,0,0,0}; //当前灵敏度等级
unsigned char det_current_sens_table[16]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};//当前灵敏度数值
unsigned char det_enable = 0xff; //每个通道检测使能,每个通道一个位
unsigned char det_status[4] = { 0,0,0,0}; //通道状态，每个通道占用半个字节4BIT
unsigned char det_result[3] = {0x00,0x00,0x00};//每个通道的检测结果，0为无车 1为有车,分为三组 三组每个通道的值一致才算真正有车
unsigned char det_buf_p[MAXCH]={0,0,0,0,0,0,0,0}; //通道缓冲区填充指针
unsigned char det_result_output = 0x00;//最终的有车无车输出结果
unsigned char det_osc_cfg[2] = {0,0}; //8个通道的震荡频率设置
unsigned int det_timer_conter[8] = {0,0,0,0,0,0,0,0};//8个通道的时间计数
unsigned char det_fillbuf_enable = 0x00; //时间计数缓冲区填充使能
unsigned char det_start = 0x00; //检测开始计数器，用于刚开机的时候的检测起始
bit det_output_enable = false; //检测输出使能
///////////////////////////////////////////////////////////////////////
void PORTInit(void);
void ADInit(void);
void IntManager(void);
void DTRecv(unsigned char d_size,unsigned char * dat);
void DetBufWrite(unsigned int val,unsigned char ch);
unsigned int GetTimeAverage(unsigned char ch);

////////////////////////////////////////////////////////////////
//通道超时处理
void Ch_Timeout_Processing()
{
	unsigned char i=0,j=0;

	for(i=0;i<MAXCH;i++)
		{
			if(det_result_output & (0x01<<i))
				{
					
					ch_timeout_timer[i]++;
					if(ch_timeout_timer[i]>=TIMEOUT_TIMER)
						{
							ch_timeout_timer[i] =0;
							for(j=0;j<AVEBUFNO;j++)
								{
							//将通道缓冲区刷成一致
									DetBufWrite(det_timer_conter[i],i);
									
								}
							//将输出置为无车状态
							det_timer_average[i] = GetTimeAverage(i); //取得特定通道的平均值
						}
				}
		}

}

////////////////////////////////////////////////////////////////
//定时器0中断服务
void TMR0IntServer(void)
{
	/*  5ms
	TMR0H  = 0xd8; //
	TMR0L  = 0xef;
	
	TMR0H  = 0xb1; // 10ms
	TMR0L  = 0xdf;
	time5ms = true;*/
	
	time0_int = true;
}
/////////////////////////////////////////////////////
//定时器1中断服务
void TMR1IntServer(void)
{
	
	TMR1H  = 0x3c; // 25ms
	TMR1L  = 0xaf;
	
	t1_cont++;

}
////////////////////////////////////////////////////////////////
//定时器3中断服务
void TMR3IntServer(void)
{	
	TMR0ON = 0; //停止TIMER0计数
	time3_int = true;
}

////////////////////////////////////////////////////////
//AD中断服务
void ADIntServer()
{
	unsigned int adrel=0x0000;

	adrel = (ADRESH<<8)|ADRESL;
}
////////////////////////////////////////////////////////
//数据传输中断服务
void DataTransferIntServer()
{

	static unsigned char buf_p = 0x00;
	static unsigned char dc_p = 0x00; 

	unsigned char tempdata = 0x00;
	
	tempdata = SSPBUF;
	SSPOV =  false;
		WCOL = false;
		//delayus(300);
	SSPBUF = buf_p++;
	//SPI_data_p++;
	//if(SPI_data_p>=5)SPI_data_p = 0;
	//if(tempdata == 0x55)
	//	LED_CH5 =!LED_CH5;
	DT_timeout = 0x00;
	
/*
	if(!SPISend)
		{//SPI接收主机发送来的命令 参数
		
			if(!SPISync)
				{
					//LED_CH2 = false;
					
					if(SPI_sync_buf[0] == SYNCCODE1) //取得第一个同步码
						{
							SPI_sync_buf[buf_p] = SSPBUF;
							buf_p++;
							//LED_CH3 = false;
							
							if(buf_p>=5)
								{   //取得一组疑似同步码
									buf_p = 0x00;

									//判断该组疑似同步码是否为真同步码
									if((SPI_sync_buf[1]==SYNCCODE2)&&(SPI_sync_buf[2]==SYNCCODE3)&&(SPI_sync_buf[3]==SYNCCODE4)&&(SPI_sync_buf[4]==SYNCCODE5))
										{ //该组疑似同步码为真同步码
											SPISync = true;
											SPI_sync_buf[0] = 0x00; //清除缓冲区
											SPI_sync_buf[1] = 0x00; //清除缓冲区
											SPI_sync_buf[2] = 0x00; //清除缓冲区
											SPI_sync_buf[3] = 0x00; //清除缓冲区
											SPI_sync_buf[4] = 0x00; //清除缓冲区
											
										}
								}
						}
					else
						{
							//LED_CH4 = false;
							SPI_sync_buf[0] = SSPBUF;
							buf_p = 0x01;
							//if(SPI_sync_buf[0] == SYNCCODE1) //取得第一个同步码
								//LED_CH5 = false;
						}
					
				}
			else
				{ //接收业务数据
					if(SPI_command == 0xff)
						{ //接受SPI命令字
							SPI_command = SSPBUF; //接收命令字
							SPI_data_counter = 0xff; //准备开始接收字节数
							//LED_CH5 = false;
						}
					else
						{
							if(SPI_data_counter == 0xff)
								{
									SPI_data_counter =SSPBUF; //接收字节数
									dc_p = 0x00; 
									//LED_CH6 = false;
									if(SPI_data_counter == 0x00)
										{
											SPIFrame = true; //指示一帧接收完毕 该帧没有带任何数据参数
											SPISync = false;
										}	
								}
							else
								{ //接受数据参数									
									SPI_data[dc_p++] = SSPBUF;//接收数据参数	
									//LED_CH7 = false;
									if(dc_p >= SPI_data_counter)
										{
											SPIFrame = true; //指示一帧接收完毕
											SPI_send_p = 0x00; //为回复数据做准备
											SPISync = false;
										}
								}
						}
					

				}
			
		}
	else
		{//SPI回复命令参数给主机
				tempdata = SSPBUF;
		SSPOV =  false;
		WCOL = false;
			SSPBUF = SPI_data[SPI_send_p]; //回复数据
			//LED_CH8 = false;
			if(SPI_send_p>= (SPI_data_counter))
				{
					SPI_send_p = 0x00; 
					SPISend = false;
				}
			else
				{
					SPI_send_p++;
				}
				
		}
		
		*/
}

///////////////////////////////////////////////////////////////
//中断入口服务
void interrupt IntServer(void)
{
	//发生SPI中断
	if(SSPIE && SSPIF)
		{
			SSPIF = 0;
			BF = 0;
			DataTransferIntServer(); //数据中断服务程序
		}

	//定时器0中断判断
	if(TMR0IE && TMR0IF)
		{

			TMR0IF = 0;
			TMR0IntServer();
		}
	//定时器1中断判断
	if(TMR1IE && TMR1IF)
		{

			TMR1IF = 0;
			TMR1IntServer();
		}
	//定时器3中断判断
		if(TMR3IE && TMR3IF)
			{
	
				TMR3IF = 0;
				TMR3IntServer();
			}


}

////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
//端口初始化
void PORTInit(void)
{
	ANCON1 = 0X00;
	ANCON0 = 0X00;
	//ANCON2 = 0X00;
	
	RBIE=false;

	//设置引脚 为输出状态
	TRISA = 0x00;
	TRISB = 0x00;
	TRISC = 0x00;
	TRISD = 0x00;
	TRISE = 0x00;

	PORTD = 0Xff; //将8个通道振荡器关闭
	LED_CH1 = true; //熄灭LED灯
	LED_CH2 = true; //熄灭LED灯
	LED_CH3 = true; //熄灭LED灯
	LED_CH4 = true; //熄灭LED灯
	LED_CH5 = true; //熄灭LED灯
	LED_CH6 = true; //熄灭LED灯
	LED_CH7 = true; //熄灭LED灯
	LED_CH8 = true; //熄灭LED灯
	
	//设置CLKin(RB5)引脚为输入引脚
	TRISB |= 0x20; //
	
	//DT(Data Transport) CLK设置为输入 DAT 设置为输入 ACK设置为输入
	TRISC |= 0x08; //CLK INPUT 
	TRISC |= 0x10; //DAT INPUT 
	TRISC |= 0x20; //ACK INPUT 
	//TRISC &= 0xdf; //ACK OUTPUT 
	DT_CLK = true;
	DT_ACK = true;
	DT_DAT = true;
	//CS 为输入引脚
	TRISA |= 0x20;

}

/////////////////////////////////
void IntManager(void)
{
	//允许全局中断
	INTCON |= 0xc0;

	
	//定时器0开启中断并启动赋初值
	TMR0IE = 1;  //开TMR0中断
	TMR0IF = 0;  //清标志位
	T08BIT = 0; //将TMR0设为16位定时器
	T0CS   = 0; //将TMR0设置为内部时钟定时器
	//赋初值
	TMR0H  = 0xd8; //  5ms
	TMR0L  = 0xef;
	//启动TMR0定时器
	TMR0ON = 1;

	/*//定时器1开启中断并启动赋初值
	TMR1IE = 1;  //开TMR1中断
	TMR1IF = 0;  //清标志位
	T1CON  = 0x00;//设置T1
	//赋初值
	TMR1H  = 0x9C; //
	TMR1L  = 0x40;
	//启动TMR0定时器
	T1CON  |= 0x01;
*/

	//设置TIMER3为计数器模式
	//通过RB5(T3CLKI)进行计数
	T3CON  = 0x84; //

}
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////
//系统应用中的超时处理
void DoTimeout(void)
{


}
/*
/////////////////////////////////////////////////////////////
//传输数据设置 包括端口设置 工作模式 速率设置等
void DataTransferInit()
{
	//设置模拟信口
	SSPSTAT = SPI_SMP|SPI_CKE;  
	SSPCON1 = SPI_SSPEN | SPI_CKP|SPI_SLAVE_SSPM;  //设置为从模式

	//设置通信引脚输入输出方向
	TRISC &= 0XDF;  //SDO TRISC.5 设置为输出口 
	TRISC |=0X10;  //SDI TRISC.4为输入口
	TRISC |= 0X08;  //SCK TRISC.3 设置为输入口
	TRISA |= 0X20;  ///S/S TRISa.5 设置为输入口
	
}
*/
/////////////////////////////////////////////////////////////
//设置595的输出
//参数 欲输出的数据地址 字节数
void Set595Output(unsigned char dat[],unsigned char num)
{
	unsigned char j,i = 0x00;
	unsigned char tempd = 0x00;
	unsigned char mov=0x00;

	HC595_OE = false; //输出数据到595引脚
	//HC595_LCH = true;
	
	PORTB |= 0X02; //RB1  = true;
//	PORTB &= 0XFD; //RB1  = 0;

	HC595_RST=TRUE;
//	PORTB &= 0XFE; //RB0 = 0
	tempd =dat[0];
//	tempd=0x0f;
	for(j=0;j<num;j++)
		{			
			for(i=0;i<8;i++)
				{	
					//tempd = tempd<<1;
					//HC595_DS = CARRY;
					if(tempd & 0x80)
						{
							HC595_SDI = true;
						}
					else
						{
							HC595_SDI = false;
						}
				//HC595_SFT = false;
					PORTB &= 0XFE; //RB0 = 0
					//HC595_SFT = true;
					PORTB |= 0X01; //RB0 = 1
				//	HC595_SFT = false;
					PORTB &= 0XFE; //RB0 = 0
					tempd <<=1;
				}
		//	dat++;
			tempd = dat[1];
		
	//	tempd=0xff;
		}
//	HC595_LCH = false; //ST上升沿，讲数据写进595内存
	PORTB &= 0XFD; //RB1  = 0;
	//HC595_LCH = true;
	PORTB |= 0X02; //RB1  = true;
	//HC595_LCH = false; //ST上升沿，讲数据写进595内存
	PORTB &= 0XFD; //RB1  = 0;
//	HC595_OE = true; //595输出
//LED_CH8=~LED_CH8;

}
/////////////////////////////////////////////////////////////
//设置8个通道的振荡频率
//参数:频率设置数值
void SetFreq(unsigned char dat[])
{
	unsigned char temp_data[2] = {0,0};
    
	temp_data[1] = dat[0];
	temp_data[0] = dat[1];
	Set595Output(temp_data,2);

}
////////////////////////////////////////////////////////////////////////////////////
//设置８个通道的灵敏度
//参数:灵敏度等级、灵敏度数值
void SetSens(unsigned char *table,unsigned char *level)
{
	det_current_sens[0]=*(table+(*level&0x0f));
	det_current_sens[1]=*(table+((*level&0xf0)>>4));
	level++;
	det_current_sens[2] =*(table+(*level&0x0f));
	det_current_sens[3] =*(table+((*level&0xf0)>>4));
	level++;
	det_current_sens[4] =*(table+(*level&0x0f));
	det_current_sens[5] =*(table+((*level&0xf0)>>4));
	level++;
	det_current_sens[6] =*(table+(*level&0x0f));
	det_current_sens[7] =*(table+((*level&0xf0)>>4));
}

/////////////////////////////////////////////////////////////
//读取EEPROM中的震动频率数据和灵敏度数据并设置
void SetConfig()
{
	unsigned char EEPromData[NUM_SENS_LV+NUM_SENS+NUM_OSC_CFG];
	unsigned char i = 0x00;
/*	//接收配置数据并存入EEPROM
	DTRecv((NUM_SENS_LV+NUM_SENS+NUM_OSC_CFG),EEPromData);
	eeprom_addr = ADDR_SENS_LV;
	eeprom_num = NUM_SENS_LV+NUM_SENS+NUM_OSC_CFG;
	EEPROMWrite(&eeprom_addr,&eeprom_num,EEPromData);
*/	//清空内存数据
	for(i=0;i<(NUM_SENS_LV+NUM_SENS+NUM_OSC_CFG);i++)
		{
			EEPromData[i] = 0x00;
		}
	//读取8个通道的灵敏度等级,灵敏度表以及振荡频率设置
	//从EEPROM中读取ID信息
	eeprom_addr = ADDR_SENS_LV;
	eeprom_num = NUM_SENS_LV+NUM_SENS+NUM_OSC_CFG;
	EEPROMRead(&eeprom_addr,&eeprom_num,EEPromData);

	//设置灵敏度
	det_current_sens[0] = EEPromData[NUM_SENS_LV + EEPromData[0] & 0x0f];
	det_current_sens[1] = EEPromData[NUM_SENS_LV + EEPromData[0] & 0xf0];
	det_current_sens[2] = EEPromData[NUM_SENS_LV + EEPromData[1] & 0x0f];
	det_current_sens[3] = EEPromData[NUM_SENS_LV + EEPromData[1] & 0xf0];
	det_current_sens[4] = EEPromData[NUM_SENS_LV + EEPromData[2] & 0x0f];
	det_current_sens[5] = EEPromData[NUM_SENS_LV + EEPromData[2] & 0xf0];
	det_current_sens[6] = EEPromData[NUM_SENS_LV + EEPromData[3] & 0x0f];
	det_current_sens[7] = EEPromData[NUM_SENS_LV + EEPromData[3] & 0xf0];

	//设置频率
	det_osc_cfg[0] = EEPromData[20];
	det_osc_cfg[1] = EEPromData[21];
	SetFreq(det_osc_cfg);
}
////////////////////////////////////////////////////////////
//判断各个通道脉冲是否正常
void PulseErrSet(unsigned char ch)
{
	if(det_pluse_counter[ch] < 0x0005)
		{	//通道未起振
			det_enable &= (~(0x01 <<ch)); //标记该通道停振
			//LED_CH3 = false;
			if(ch%2 == 0x00)
				{
					det_status[ch/2] |= (((det_status[ch/2] & 0xf0) | 0x08)|CHOSCSTOP);
				}
			else
				{
					det_status[ch/2] |= (((det_status[ch/2] & 0x0f) | 0x80)|(CHOSCSTOP<<4));
				}
		
		}
//	else if (det_pluse_counter[ch] < 0x0096) //小于30KHZ认为线圈未连接
	
	else if (det_pluse_counter[ch] < 0x0064) //小于20KHZ认为线圈未连接
		{//30KHZ 5ms 有150个脉冲

		//LED_CH4 = false;
			det_enable &= (~(0x01 <<ch)); //标记该通道停振
			if(ch%2 == 0x00)
				{
					det_status[ch/2] |= (((det_status[ch/2] & 0xf0) | 0x08)|CHNOCOIL);
				}
			else
				{
					det_status[ch/2] |= (((det_status[ch/2] & 0x0f) | 0x80)|(CHNOCOIL<<4));
				}
		}
	else  //震荡正常
		{
			//LED_CH5 = false;
			det_enable |= (0x01 <<ch); //标记该通道正常
			if(ch%2 == 0x00)
				{
					det_status[ch/2] |= (((det_status[ch/2] & 0xf0) | 0x08)|CHOK);
				}
			else
				{
					det_status[ch/2] |= (((det_status[ch/2] & 0x0f) | 0x80)|(CHOK<<4));
				}
		}
}
////////////////////////////////////////////////////////////
//取得1个通道的采样脉冲数
//参数:欲采样的通道
void GetChSampPluse(unsigned char ch)
{
	unsigned char temp_sta = 0x00;
	//关闭全局中断
	//INTCON &= 0x3f; 
	//LED_CH1 = false;
	
	//关闭TMR0定时器
	TMR0ON = 0;
	//赋初值
	TMR0H  = 0xd8; //  5ms
	TMR0L  = 0xef;

	//关闭TMR3定时器
	TMR3ON = 0;
	//清空TIMER3
	TMR3H = 0X00;
	TMR3L = 0X00;
	//定时器3中断禁用
	TMR3IE = false;
	//关闭数据传输中断
	SSPIE = false;

	time0_int = false ; //清空标志位

	//开启TMR3定时器
	TMR3ON = 1;
	//开启TMR0定时器
	TMR0ON = 1;
	//开启全局中断
	INTCON |= 0xc0; 
	while(!time0_int)
		{
		/*
			if(TMR0H>=DETTIMEOUT)
				{
					temp_sta = 0x01; //状态更改
					break;
				}
				*/
		} //等待5ms计时结束
	//关闭TMR3定时器
	TMR3ON = 0;
	//关闭TMR0定时器
	TMR0ON = 0;
	det_pluse_counter[ch] = 0x0000;  //清空通道数据
	det_pluse_counter[ch] = (TMR3H <<8)|TMR3L;  //取得当前通道的脉冲数
	det_pluse_counter_h[ch] = 0xff - TMR3H; //取得高8位初值
	det_pluse_counter_l[ch] = 0xff - TMR3L; //取得低8位初值

	//LED_CH2 = false;
	if(temp_sta == 0x01)
		{
			det_pluse_counter[ch] = 0x0000;  //清空通道数据
			
		}	
	PulseErrSet(ch); //判断各个通道脉冲是否正常
	
}
////////////////////////////////////////////////////////////
//取得8个通道的采样脉冲数
void GetSampPluse()
{
	unsigned char i = 0x00;
/*
	PORTD = 0xFF; //关闭所有通道
	PORTD = (~(0x01 << 7)); //打开一个通道


	while(1){
		
			
		}
		*/
	//取得8个通道的采样脉冲数
	for(i=0;i<MAXCH;i++)
		{
			if(det_result_output&(0x01<<i))
			{
				det_enable |= (0x01 <<i); //标记该通道正常
				if(i%2 == 0x00)
					{
						det_status[i/2] |= (((det_status[i/2] & 0xf0) | 0x08)|CHOK);
					}
				else
					{
						det_status[i/2] |= (((det_status[i/2] & 0x0f) | 0x80)|(CHOK<<4));
					}
			}
			else
			{
				PORTD = 0xFF; //关闭所有通道
				PORTD = (~(0x01 << i)); //打开一个通道
				//PORTD =  0xfe;  //打开第一个通道
				delayus(100); //延时一段时间 使通道震荡平稳
				GetChSampPluse(i); //取得特定通道采样脉冲数
			}
			
		}
}
////////////////////////////////////////////////////////////
//取得指定通道的时间计数值平均值
//参数为通道号
//返回值为当前取得的时间计数平均值 为一个unsigned int
unsigned int GetTimeAverage(unsigned char ch)
{
	unsigned char  i=0;
	unsigned char j,k;
	unsigned int  tempData = 0x0000,tempData1;
	unsigned long int tempSum = 0x00000000;  // 
	tempData1 = 0xffff;
	j=0;k=0;
	for(i=0;i<AVEBUFNO;i++)   //取最高数与最低数的索引
	{
		if(tempData < det_timer_counter_buf[ch][i])
		{
			j = i;
			tempData = det_timer_counter_buf[ch][i];
		}
		if(tempData1> det_timer_counter_buf[ch][i])
		{
			k = i;
			tempData1= det_timer_counter_buf[ch][i];
		}

	}
	tempSum = 0x00000000;
	if(j!=k)
	{
		for(i=0;i<AVEBUFNO;i++)   //去掉一个最高和一个最低数值
		{
			if(i==j)continue;
			if(i==k)continue;
			tempSum += det_timer_counter_buf[ch][i];
			
		}
		return (tempSum>>3);   //剩下的8个字节求平均
	 }
	 else
	 {
		return det_timer_counter_buf[ch][0];  //8个字节都相等，取其中一个字节作为平均值
	 }

}
////////////////////////////////////////////////////////////
//取得指定通道的时间计数值
//参数为通道号
//返回值为当前取得的时间计数 为一个unsigned int
unsigned int GetTimerCounter(unsigned char ch)
{
	unsigned int time_val = 0x0000;
	unsigned char temp_sta = 0x00;
	//关闭全局中断
	//INTCON &= 0x3f; 

	
	//关闭TMR3定时器
	TMR3ON = 0;
	//TIMER3赋初值
	TMR3H = 0xff;
	TMR3L = 0xf5;
	
	//关闭TMR0定时器
	TMR0ON = 0;
	//清空TIMER0
	TMR0H  = 0; // 
	TMR0L  = 0;
	
	//定时器3中断使能
	TMR3IE = true;
	//关闭SPI中断
	SSPIE = false;
	
	time3_int = false;
	//启动TMR3定时器
	TMR3ON = 1;
	while(!time3_int)
		{
		/*
			if(TMR0H>=DETTIMEOUT)
				{
					temp_sta = 0x01;
					break;
				}
				*/
		} //等待震荡溢出 捕捉起点
	
	time3_int = false;

	//清空TIMER0
	TMR0H  = 0; // 
	TMR0L  = 0;

	
	//关闭TMR3定时器
	TMR3ON = 0;
	//TIMER3赋初值
	TMR3H = det_pluse_counter_h[ch];
	TMR3L = det_pluse_counter_l[ch];

	time3_int = false;
	//启动TMR3定时器
	TMR3ON = 1;
	//启动TMR0定时器
	TMR0ON = 1;
	while(!time3_int)
		{
		/*
			if(TMR0H>=DETTIMEOUT)
				{
					temp_sta = 0x01;
					break;
				}
				*/
		} //等待震荡溢出

	time3_int = false;

	//定时器3中断禁用
	TMR3IE = false;
	//开启SPI中断
	SSPIE = true;
	time_val = (TMR0H <<8)|TMR0L;
	if(temp_sta == 0x01)
		{
			time_val = 0x0000;
		}
	return time_val;
}
///////////////////////////////////////////////////////////
//初始化检测 包括检测八个通道的时间计数 刷新平滑缓冲区等等
void DetInit()
{
	unsigned char i = 0x00,j=0x00;

	for(i=0;i<MAXCH;i++)
		{
			if(det_enable & (0x01 <<i)) //判断该通道是否需要检测
				{
					PORTD = 0xFF; //关闭所有通道
					PORTD = (~(0x01 << i)); //打开一个通道
					//PORTD = 0xfe; //打开第一通道
					delayus(100); //延时一段时间 使通道震荡平稳
					det_timer_counter_buf[i][0] = GetTimerCounter(i); //取得指定通道的时间计数值
					for(j=1;j<10;j++)
						{//填充10个平滑缓冲区
							det_timer_counter_buf[i][j] = det_timer_counter_buf[i][0];
						}
					det_timer_average[i] = GetTimeAverage(i); //取得特定通道的平均值
					det_timer_base[i] = det_timer_average[i]; //赋基值的初值
				}
		}
	PORTD = 0xFF; //关闭所有通道
}
///////////////////////////////////////////////////////////
//填充检测缓冲区
//参数:检测值，当前需要检测的通道号
void DetBufWrite(unsigned int val,unsigned char ch)
{
	det_timer_counter_buf[ch][det_buf_p[ch]] = val;
	det_buf_p[ch]++;

	if(det_buf_p[ch]>=AVEBUFNO)
		{
			det_buf_p[ch] = 0;
		}
}
///////////////////////////////////////////////////////////
unsigned int abs(int a)
{
	if(a<0)
		return -a;
	return a;
}
///////////////////////////////////////////////////////////
//启动检测
//参数:当前需要检测的通道号
void StartDet()
{
	unsigned int temp_timer_counter = 0x0000;

	unsigned char i = 0x00;
	
		for(i=0;i<MAXCH;i++)
			{
				//LED_CH8 = false; 
				//i=7; //打开第8通道 用于测试观察
				if(det_enable & (0x01 <<i)) //判断该通道是否需要检测
					{
						//PORTD = 0xFF; //关闭所有通道
						PORTD = 0xff & (~(0x01 << i)); //打开一个通道
						//LATD =  (~(0x01 << i)); //打开一个通道
						//PORTD =  0xfe; //打开第一通道
						delayus(100); //延时一段时间 使通道震荡平稳
						det_timer_conter[i] = GetTimerCounter(i);
						delayus(100); //延时一段时间 使通道震荡平稳
						if(i==7)
							{
								DT_data1[4] = det_timer_conter[7]>>8; 
								DT_data1[5] = det_timer_conter[7];
							}
						if(!det_output_enable)
							{
								det_fillbuf_enable |= (0x01<<i); //检测计数超过灵敏度运行填充数据
								continue;
							}
//						if((abs(temp_timer_counter - det_timer_average[i]) >= det_current_sens[i])&& abs(temp_timer_counter - det_timer_average[i])< MAXOSCDEV)
						
						//if(((temp_timer_counter - det_timer_average[i]) >= 200)||(( det_timer_average[i] - temp_timer_counter) >= 200))//&& abs(temp_timer_counter - det_timer_average[i])< MAXOSCDEV)
					
						if(det_timer_conter[i] < det_timer_average[i])
							{
								temp_timer_counter = det_timer_average[i] - det_timer_conter[i];
								if ((temp_timer_counter) >= det_current_sens[i])
									{ //变化量超过当前的灵敏度，即为有车
										det_fillbuf_enable &= ~(0x01<<i); //检测计数超过灵敏度不运行填充数据
										if((det_result_output>>i)&0x01)
											{ //目前处于有车状态 又检测到 一个有车的状态
												if(det_output_enable) det_result[0] |= 0x01 <<i; //写入有车状态.									
											}
										else
											{
												if(temp_timer_counter>=NOISEVAL)
													{//无车的时候，计数变化超过噪声门限，认为是噪声 去除掉
														;
													}
												else
													{ //超过灵敏度，但是没有超过噪声门限 认为有新的车辆进入
														if(det_output_enable) det_result[0] |= 0x01 <<i; //写入有车状态.
													}
											}										
									}
								else
									{//变化量达不到灵敏度值
										det_result[0] &= (~(0x01 <<i)); //写入无车状态
										det_fillbuf_enable |= (0x01<<i); //检测计数超过灵敏度运行填充数据
										//写入平滑缓冲区
										//DetBufWrite(temp_timer_counter,i);
										
									}
							}
						else
							{
									det_result[0] &= (~(0x01 <<i)); //写入无车状态
									det_fillbuf_enable |= (0x01<<i); //检测计数超过灵敏度运行填充数据
									
									
							}
				}		
			}

PORTD = 0xFF; //关闭所有通道

}
/////////////////////////////////////////////////////////////
//从机数据发送
//参数 d_size 数据字节数 *dat 数据指针
void DTSend(unsigned char d_size,unsigned char *dat)
{
	unsigned char i = 0x00;
	unsigned char j=0x00;
	//DT(Data Transport) CLK设置为输入 DAT 设置为输出 ACK设置为输出
	TRISC |= 0x08; //CLK INPUT 
	TRISC &= 0xEF; //DAT OUTPUT 
	TRISC &= 0xDF; //ACK OUTPUT 

	DT_CLK = true;
	DT_ACK = true;
	DT_DAT = true;
	
//	det_result_output=*dat;
	
	for(i = 0 ;i<d_size;i++)
		{
			for(j=0;j<8;j++)
				{
					while(DT_CLK){;}//等待主机的时钟下降沿
					if((*dat)&(0x80>>j))
						{ //发送1
							DT_DAT = true; 
						}
					else
						{//发送0
							DT_DAT = false; 
						}	
					DT_ACK = false; //造成一个ACK下降沿 通知主机数据准备完毕
					while(!DT_CLK){;}//等待主机的CLK上升沿
					DT_ACK = true; //抬高CLK 造成一个上升沿
				}
			dat++;
		}
	//DT(Data Transport) CLK设置为输入 DAT 设置为输入 ACK设置为输出
	TRISC |= 0x08; //CLK INPUT 
	TRISC |= 0x10; //DAT INPUT 
	TRISC &= 0xDF; //ACK OUTPUT 
	DT_CLK = true;
	DT_ACK = true;
	DT_DAT = true;

}
///////////////////////////////////////////////////////////////
//从机数据接收
//参数 d_size 数据字节数 *dat 数据指针
void DTRecv(unsigned char d_size,unsigned char *dat)
{
	unsigned char i = 0x00,j=0x00;
	//DT(Data Transport) CLK设置为输入 DAT 设置为输入 ACK设置为输出
	TRISC |= 0x08; //CLK INPUT 
	TRISC |= 0x10; //DAT INPUT 
	TRISC &= 0xDF; //ACK OUTPUT 

	DT_CLK = true;
	DT_ACK = true;
	DT_DAT = true;
	*dat = 0x00; //清空
	for(i = 0 ;i<d_size;i++)
		{
			for(j=0;j<8;j++)
				{
					while(DT_CLK){;}//等待主机的时钟下降沿
					
					if(DT_DAT)
						{
							*dat |= (0x80>>j); //从最高位开始填充数据
						}
					DT_ACK = false; //造成一个下降沿 通知主机 正确接收了一个位
					while(!DT_CLK){;}//等待主机的时钟上升沿
					DT_ACK = true;
				}
			
			dat++;
			*dat = 0x00; //清空
		}
//	dat=dat-d_size;
//	det_result_output=*dat;
	//det_result_output|=0x01;
	//DT(Data Transport) CLK设置为输入 DAT 设置为输入 ACK设置为输出
	TRISC |= 0x08; //CLK INPUT 
	TRISC |= 0x10; //DAT INPUT 
	TRISC &= 0xDF; //ACK OUTPUT 
	DT_CLK = true;
	DT_ACK =true;
	DT_DAT = true;

}

///////////////////////////////////////////////////////////
//开始计算有车无车 车辆的进入与离去
void StartCalc()
{
	unsigned char i = 0x00;

	for(i=0;i<MAXCH;i++)
		{
			if(det_enable & (0x01<<i))
				{
					if((det_result[0] & (0x01<<i)) && (det_result[1] & (0x01<<i)) &&(det_result[2] & (0x01<<i)))
						{ //连续三次变化超灵敏度认为有车
							det_result_output |= (0x01<<i);

						}
					else if((!(det_result[0] & (0x01<<i))) && (!(det_result[1] & (0x01<<i))) &&(!(det_result[2] & (0x01<<i))))
						{ //连续三次返回基值认为车辆离开 平滑
								det_result_output &= (~(0x01<<i));

						}
					else
						{ //连续三次检测不一致，更新三个结果缓冲区
							det_result[2] = det_result[1];
							det_result[1] = det_result[0];
						}

				}

		}
	LED_CH1 = !(det_result_output & 0X01);
	LED_CH2 = !(det_result_output & 0X02);
	LED_CH3 = !(det_result_output & 0X04);
	LED_CH4 = !(det_result_output & 0X08);
	LED_CH5 = !(det_result_output & 0X10);
	LED_CH6 = !(det_result_output & 0X20);
	LED_CH7 = !(det_result_output & 0X40);
	LED_CH8 = !(det_result_output & 0X80);
	
}

///////////////////////////////////////////////////////////
//从EEPROM中读取震荡频率设置
void ReadFrequency(unsigned char *dat)
{
	//从EEPROM中读取灵敏度等级
	eeprom_addr = ADDR_OSC_CFG;
	eeprom_num = NUM_OSC_CFG;
	EEPROMRead(&eeprom_addr,&eeprom_num,dat);
}

///////////////////////////////////////////////////////////
//从EEPROM中读取灵敏度等级
void ReadSensLv(unsigned char *dat)
{
	//从EEPROM中读取灵敏度等级
	eeprom_addr = ADDR_SENS_LV;
	eeprom_num = NUM_SENS_LV;
	EEPROMRead(&eeprom_addr,&eeprom_num,dat);
}

///////////////////////////////////////////////////////////
//从EEPROM中读取灵敏度表
void ReadSensTable(unsigned char *dat)
{
	//从EEPROM中读取灵敏度表
	eeprom_addr = ADDR_SENS;
	eeprom_num = NUM_SENS;
	EEPROMRead(&eeprom_addr,&eeprom_num,dat);
}
///////////////////////////////////////////////////////////
//将灵敏度等级写入EEPROM中
void DTWriteSensLv(unsigned char *dat)
{
	//将灵敏度等级写入EEPROM中
	eeprom_addr = ADDR_SENS_LV;
	eeprom_num = NUM_SENS_LV;
//	DTSend(NUM_SENS_LV,dat);
	EEPROMWrite(&eeprom_addr,&eeprom_num,dat);
	ReadSensLv(det_current_sens_lv);
	SetSens(det_current_sens_table,det_current_sens_lv);
/*	eeprom_addr = ADDR_SENS_LV;
	eeprom_num = NUM_SENS_LV;
	EEPROMRead(&eeprom_addr,&eeprom_num,(DT_data1+2));
	DTSend((NUM_SENS_LV+2),DT_data1);
*/
}
///////////////////////////////////////////////////////////
//将灵敏度表写入EEPROM中
void DTWriteSens(unsigned char *dat)
{
	//将灵敏度表写入EEPROM中
	eeprom_addr = ADDR_SENS;
	eeprom_num = NUM_SENS;
	EEPROMWrite(&eeprom_addr,&eeprom_num,dat);
	ReadSensTable(det_current_sens_table);
	SetSens(det_current_sens_table,det_current_sens_lv);
	
}
///////////////////////////////////////////////////////////
//将震荡频率设置等级写入EEPROM中
void DTWriteOSCSet(unsigned char *dat)
{
	//将震荡频率设置等级写入EEPROM中
	eeprom_addr = ADDR_OSC_CFG;
	eeprom_num = NUM_OSC_CFG;
	EEPROMWrite(&eeprom_addr,&eeprom_num,dat);
	det_osc_cfg[0]=*dat;
	dat++;
	det_osc_cfg[1]=*dat;
	SetFreq(det_osc_cfg);
	DT_data1[0]=det_osc_cfg[0];
	DT_data1[1]=det_osc_cfg[1];
//	Set595Output(det_osc_cfg,2);
	//SPIInit();  //SPI端口初始化
//	SetConfig(); //设置振荡频率等配置数据

}
//////////////////////////////////////////////////////////////////
void GetCoilState()
{
	/*unsigned char i;
	for(i=0;i<MAXCH;i++)
	{
		PulseErrSet(i);
	}
	*/
	GetSampPluse();
	DT_data1[2]=det_status[0];
	DT_data1[3]=det_status[1];
	DT_data1[4]=det_status[2];
	DT_data1[5]=det_status[3];
}

////////////////////////////////////////////////////////////
//对接收到的SPI数据进行处理
/*
void SPIDataProcess()
{
	if(SPIFrame)
		{
			SPIFrame = false;

			switch(SPI_command)
				{
					case SPICOMD_GET_RESULT:
						SPI_data_counter = 0x01; //检测结果只有一个字节
						SPI_data[0] = SPI_command;
						SPI_data[1] = SPI_data_counter;
						SPI_data[2] = det_result_output;
						break;
					case SPICOMD_GET_STATUS:
						SPI_data_counter = 0x04; //通道状态包含有4个字节
						SPI_data[0] = SPI_command;
						SPI_data[1] = SPI_data_counter;
						SPI_data[2] = det_status[0];
						SPI_data[3] = det_status[1];
						SPI_data[4] = det_status[2];
						SPI_data[5] = det_status[3];
						break;
					case SPICOMD_GET_SENS_LV:
						SPI_data_counter = 0x04; //灵敏度等级包含有4个字节
						SPI_data[0] = SPI_command;
						SPI_data[1] = SPI_data_counter;
						SPI_data[0] = det_current_sens_lv[0];
						SPI_data[1] = det_current_sens_lv[1];
						SPI_data[2] = det_current_sens_lv[2];
						SPI_data[3] = det_current_sens_lv[3];
						break;
					case SPICOMD_GET_OSC_CFG:
						SPI_data_counter = 0x02; //震荡频率设置包含有2个字节
						SPI_data[0] = SPI_command;
						SPI_data[1] = SPI_data_counter;
						SPI_data[0] = det_osc_cfg[0];
						SPI_data[1] = det_osc_cfg[1];
						break;
					case SPICOMD_GET_SENS:
						SPI_data_counter = 0x10; //灵敏度表包含有16个字节
						ReadSensTable(SPI_data); //从EEPROM中读取灵敏度表
						break;
					case SPICOMD_SET_SENS_LV:
						SPI_data_counter = 0x00; //回复确认没有参数
						WriteSensLv(SPI_data);   //将灵敏度等级写入EEPROM

						//更新内存中的灵敏度等级数据
						det_current_sens_lv[0] = SPI_data[2];
						det_current_sens_lv[1] = SPI_data[3];
						det_current_sens_lv[2] = SPI_data[4];
						det_current_sens_lv[3] = SPI_data[5];
						break;
					case SPICOMD_SET_OSC_CFG:
						SPI_data_counter = 0x00; //回复确认没有参数
						WriteOSCSet(SPI_data);   //将灵敏度等级写入EEPROM						
						//更新内存中的震荡频率设置值
						det_osc_cfg[0] = SPI_data[2];
						det_osc_cfg[1] = SPI_data[3];
						break;
					case SPICOMD_SET_SENS:
						SPI_data_counter = 0x00; //回复确认没有参数 
						WriteSens(SPI_data);   //将灵敏度等级写入EEPROM
						SetConfig(); //更新内存数据
						break;
					default:
						break;					

				}
			SPISend =  true; //数据处理完毕 可以回复给主机设备

		}
}
*/
///////////////////////////////////////////////////////////
//LED闪灯测试
void LEDOutputTest()
{
while(1){
	LED_CH1 = false;
	LED_CH2 = false;
	LED_CH3 = false;
	LED_CH4 = false;
	LED_CH5 = false;
	LED_CH6 = false;
	LED_CH7 = false;
	LED_CH8 = false;

	delayms(500);
	LED_CH1 = true;
	LED_CH2 = true;
	LED_CH3 = true;
	LED_CH4 = true;
	LED_CH5 = true;
	LED_CH6 = true;
	LED_CH7 = true;
	LED_CH8 = true;

	delayms(500);
}
}
void DTRest(void)
{
	while(1);
}
////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
void TransportDataProcess(void)
{
	DT_data1[0]=DT_command;
	DT_data1[1]=DT_SDdata_counter;
	switch (DT_command)
		{
			case DTRdDETECTED:  //主设备读取从设备8个通道的检测结果，该命令字带有1个字节的数据参数
				DT_data1[2]=det_result_output&DT_data[0];
				break;
			case DTRSTATE:		//主设备读取从设备8个通道的通道状态，该命令字没有参数
				GetCoilState();
				break;
			case DTRSENSLV://主设备读取从设备8个通道的灵敏度等级，该命令没有参数				
				ReadSensLv(DT_data1+2);
				break;
			case DTRFREQUENCY:	//主设备读取从设备8个通道的震荡设置，该命令没有参数
				ReadFrequency(DT_data1+2);
				break;
			case DTRSENS:	//主设备读取从设备灵敏度表，该命令没有参数
				ReadSensTable(DT_data1+2);
				break;
			case DTWSENSLV://主设备写入从设备8个通道的灵敏度等级，后带4个字节参数
			//	DTSend(4,DT_data);
				DTWriteSensLv(DT_data);				
				break;
			case DTWFREQUENCY:	//主设备写入从设备8个通道的震荡频率设置值，后带2个字节的参数
				DTWriteOSCSet(DT_data);
				break;
			case DTWSENS:	//主设备写入从设备灵敏度表。一个灵敏度表包含16个字节
				DTWriteSens(DT_data);
				break;
			case DTREST:
				DTRest();
				break;
	/*			case 0x0a:
					//发送当前各通道灵敏度
					DT_data1[2]=det_current_sens[0];
					DT_data1[3]=det_current_sens[1];
					DT_data1[4]=det_current_sens[2];
					DT_data1[5]=det_current_sens[3];
					DT_data1[6]=det_current_sens[4];
					DT_data1[7]=det_current_sens[5];
					DT_data1[8]=det_current_sens[6];
					DT_data1[9]=det_current_sens[7];
			break;
	*/		default:
				break;
		}
	
//	DTSend(2,det_osc_cfg);
	DTSend(DT_SDdata_counter+2,DT_data1);
	
	delayms(10);

}



//////////////////////////////////////////////////////////////////////;
//数据传输操作
void DTOperation()
{
	unsigned char dt_dat[7]={0x00,0x00,0x00,0x00,0x00,0x00,0x00};
	static unsigned char prev_mcu_cs = 0x01;
	unsigned char i=0x00;
	//if(prev_mcu_cs)
		{
		//	if(!MCU_CS)
				{//cs被拉低，表明主机在发起通信
			//		prev_mcu_cs = MCU_CS; //保存CS状态
					//if(!TD_read)
			//			{//主机处于写数据的状态
							
							DTRecv(7,dt_dat);//接收同步码，命令字，参数长度
			//				DTSend(5,dt_dat);//反回接收的同步码
							
			//				delayms(100);							
			//				det_result_output=dt_dat[0];
							//DT_read = true;
							//LED_CH2 = false;
			/*				for(i=0;i<5;i++)
								{
									DT_sync_buf[i] = dt_dat[i];
								}
			*/				DT_sync_buf[0] = dt_dat[0];								
							DT_sync_buf[1] = dt_dat[1];	
							DT_sync_buf[2] = dt_dat[2];	
							DT_sync_buf[3] = dt_dat[3];	
							DT_sync_buf[4] = dt_dat[4];	
			//				DTSend(5,DT_sync_buf);		//反回接收的同步码
			//				DTSend(7,dt_dat);//反回接收的同步码
					
						if((0X11==DT_sync_buf[0])&&(DT_sync_buf[1]==SYNCCODE2)&&(DT_sync_buf[2]==SYNCCODE3)&&(DT_sync_buf[3]==SYNCCODE4)&&(DT_sync_buf[4]==SYNCCODE5))		
								//判断是否接收到完正确的同步码
						{
							DTSync=true;
			//				LED_CH1=!LED_CH1;
						}
						else
						{
							DTSync=false;
			//				LED_CH3=!LED_CH3;
						}
							
			//				DTSend(5,DT_sync_buf);//反回接收的同步码
			//				LED_CH5=~LED_CH5;
							DT_command=dt_dat[5];					// 取命令字
							DT_data_counter=dt_dat[6];				//取参数字长
							DTRecv(DT_data_counter,DT_data);		//接收参数
			//				DTSend(DT_data_counter,DT_data);
								
						switch (DT_command)						//确定反回参数字长
									{
									case DTRdDETECTED:  
										//从设备回复给主设备8个通道的检测结果，数据参数为8个通道的检测结果，使用一个字节表示
										DT_SDdata_counter=1;
										break;
									case DTRSTATE:		
										//从设备回复给主设备8个通道的通道状态，数据参数为4个字节的通道状态
										DT_SDdata_counter=4;
										break;
									case DTRSENSLV:
										//从设备回复给主设备8个通道的灵敏度等级，后带4个字节参数，每半个字节表示一个通道				
										DT_SDdata_counter=4;
										break;
									case DTRFREQUENCY:
										//从设备回复给主设备8个通道的震荡设置，后带2个字节的参数
										DT_SDdata_counter=2;
										break;
									case DTRSENS:	
										//从设备回复给主设备灵敏度表。一个灵敏度表包含16个字节，分别表示16个灵敏度等级,作为检测器的检测参数
										DT_SDdata_counter=16;
										break;
									case DTWSENSLV:
										//从设备接收灵敏度等级确认，实际发送数据也应带上字节数0
										DT_SDdata_counter=0;
										break;
									case DTWFREQUENCY:
										//从设备接收震荡频率设置确认，实际发送数据也应带上字节数0
										DT_SDdata_counter=0;
										break;
									case DTWSENS:	
										//从设备接收灵敏度表确认，实际发送数据也应带上字节数0
										DT_SDdata_counter=0;
										break;
									case DTREST:
										break;
					/*				case 0x0a:
											DT_SDdata_counter=8;
											break;
					*/				default:
										DT_SDdata_counter=0;
										break;
									}
							
					if(DTSync)                                //  同步码正确时对数据处理
						{
			//				LED_CH8=!LED_CH8;
							TransportDataProcess();//传输数据处理
			//				DTSync=false;
			//				DTSend(2,dt_dat);//反回接收的同步码
							
						}	
					else
						{
							for(i=0;i<DT_SDdata_counter+2;i++)
							{
								DT_data1[i]=0xff;
							}					
							DTSend(DT_SDdata_counter+2,DT_data1);
			//				DTSend(7,dt_dat);//反回接收的同步码
			//				DTSend(DT_SDdata_counter,DT_data1);
							
			//				DTSend(2,DT_sync_buf);		//反回接收的同步码
						}
			//		}
			//		else
			//			{ //主机处于读数据的状态
			/*				dt_dat[0] =DT_command;
							dt_dat[1] =DT_data1[0];
							dt_dat[2] =DT_data1[1];
							dt_dat[3] =DT_data1[2];
							dt_dat[4] =DT_data1[3];
							dt_dat[5] =DT_data1[4];
							dt_dat[6] =DT_data1[5];
							dt_dat[7] =0x01;
				
							dt_dat[0] =DT_command;
							dt_dat[1] =0x01;
							dt_dat[2] =0x02
							dt_dat[3] =0x03;
							dt_dat[4] =0x04;
							dt_dat[5] =0x05;
							dt_dat[6] =0x06;
							dt_dat[7] =0x07;
							for(i=0;i<5;i++)
							{
								DT_data1[i]=DT_sync_buf[i];
							}		
							DT_data1[0]=DT_sync_buf[0];
							DT_data1[1]=DT_sync_buf[1];
							DT_data1[2]=DT_sync_buf[2];
							DT_data1[3]=DT_sync_buf[3];
							DT_data1[4]=DT_sync_buf[4];
							DTSend(5,DT_data1);				
			*/
			//				DT_read = false;
			//				DTSend(5,DT_data1);	
			//				LED_CH3 = false;
			//			}
					
			
			//			DT(Data Transport) CLK设置为输入 DAT 设置为输入 ACK设置为输入
						TRISC |= 0x08; //CLK INPUT 
						TRISC |= 0x10; //DAT INPUT 
						TRISC |= 0x20; //ACK INPUT 
						DT_CLK = true;
						DT_ACK = true;
						DT_DAT = true;
			
				}
		}
	//	else
	//	{
	//	prev_mcu_cs = MCU_CS; //保存CS状态

	//	}
	
}


///////////////////////////////////////////////////////////
void main(void)
{
	unsigned char a = 0x00;
	unsigned char j=0x00,k=0,t=0;
	SWDTEN =false;//关闭看门狗
	delayms(500);	
	PORTInit();  //端口初始化  
    IntManager();
	//SPIInit();  //SPI端口初始化
	SetConfig(); //设置振荡频率等配置数据
	GetSampPluse();//取得采样脉冲基数
	DetInit(); //初始化检测
	SWDTEN =true; //使能看门狗
	while(1)
		{
			StartDet(); //开始检测通道		
			StartCalc();//开始计算有车无车
			//DT_ACK =! DT_ACK; //测试ACK引脚
			CLRWDT();//喂狗
		if(!MCU_CS)
			{
				DTOperation();//数据传输操作
			}			
			a++;k++;
			t++;
			if(t>=20)
				{
				//1秒左右执行一次
					t=0; //返回		
					Ch_Timeout_Processing();//通道超时处理
				}

			if(k>=50)
				{	
					k=0;
					for(j=0;j<MAXCH;j++)
						{
						//写入平滑缓冲区
						if((det_fillbuf_enable>>j)&0x01)
								DetBufWrite(det_timer_conter[j],j);
						}
				}
			if(a>=200)
				{
					a =0x00;
					det_start++;
					if(det_start>=1)
						{	
							det_start=1;
							det_output_enable = true;
				//	Set595Output(det_osc_cfg,2);
						}
					
					//SetFreq(det_osc_cfg);
					for(j=0;j<MAXCH;j++)
						{	
							
							det_timer_average[j] = GetTimeAverage(j); //取得特定通道的平均值
							DT_data1[2] = det_timer_average[7] >>8;
							DT_data1[3] = det_timer_average[7];
						}						
				}
			//LED_CH7 = ! LED_CH7;
			//LEDOutputTest();
			
		}

}
///////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////



