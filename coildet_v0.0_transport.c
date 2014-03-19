












#include <PIC18F45K80.h>
#include <htc.h>
#include "CAN.H"
#include "SIN.H"

#include "mcu.h"
#include "CoilDet.H"


#define STA_MECH_ON 0X01 //开机状态
#define STA_CAN_OK 0X02 //CAN 通信正常
#define STA_MASTER_OK 0X03 //主板数据就绪正常
#define STA_LAMP_OK 0X04 //接收到新的灯色命令状态
#define STA_MASTER_ERR 0X05 //主机错误状态


#define CAN_TIMEOUT 100 //CAN总线通信超时计数
#define MASTER_TIMEOUT 250 //主板通信超时计数


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
#define CANCOILSTATE2 0x08 //主控板请求检测器发送5-16组测速线圈的绑定情况
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

unsigned char f_r_mod = CANNOREPLY; //帧回复状态



//////////////////////////////////////////////////////

unsigned char CANRid[4]={0,0,0,0}; 
unsigned char CANRdata[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},CANRdlc = 8; 
unsigned char CANSid[4]={0,0,0,0}; 
unsigned char CANSdata[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},CANSdlc = 8; 



/////////////////////////////////////////////////////////////////////////////////////////////
//单片机间数据传输用到的定义
unsigned char DT_command = 0xff; //数据传输命令字
unsigned char DT_data_counter = 0x00;//数据传输参数长度
unsigned char DT_data1_counter= 0x00;//数据接收参数长度

unsigned char DT_data[18] ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; //发送数据参数缓冲区
unsigned char DT_sync_buf[5] = {0x11,0x22,0x33,0x44,0x55}; //数据传输的同步码
unsigned char DT_data1[18] ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; //接收数据参数缓冲区
unsigned char CAN_data[18]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};//CAN数据待发送缓冲区

//////////////////////////////////////////////////////////////////////////////////
//CAN数据确认回复
//将刚收到的CAN数据再原包打回
//更改ID以及回复模式
void CANSendConfirm(void)
{
	unsigned char i;

	for(i=0;i<8;i++)
		{
			CANSdata[i] = CANRdata[i];
		}
	CANSdata[0] &= 0x3f; //将回复模式设置为00 不需要回复
	CANSdlc = CANRdlc;
	CANSend(CANSid,CANSdata,CANSdlc);
}
//////////////////////////////////////////////////////////////////////////////////
//CAN发送板的ID给主板
void CANSendID(unsigned char sm)
{

	CANSdlc = NUM_ID + 1;

	if(sm == CANREADID)
		CANSdata[0] = CANREADID; //不需要回复,发送的是ID
	else
		CANSdata[0] = CANWRITEID; //不需要回复,发送的是ID

	//从EEPROM中读取ID信息
	eeprom_addr = ADDR_ID;
	eeprom_num = NUM_ID;
	EEPROMRead(&eeprom_addr,&eeprom_num,(CANSdata+1));
	CANSend(CANSid,CANSdata,CANSdlc);
}
//////////////////////////////////////////////////////////////////////////////////
//CAN发送板的ID给主板 将ID信息写入到EEPROM 根据帧请求回复ID信息
void CANWriteID(unsigned char fm)
{		
	eeprom_addr = ADDR_ID;
	eeprom_num = NUM_ID;
	EEPROMWrite(&eeprom_addr,&eeprom_num,(CANRdata+1));
	if(fm==CANRQREPLY)
		{
			CANSendID(CANWRITEID);
		}
}
///////////////////////////////////////////////////////////////
//主机发送数据
//参数 d_size 数据字节数 *dat 数据指针 cs 从单片机片选
void DTSend(unsigned char d_size,unsigned char *dat,unsigned char cs)
{
	unsigned char i = 0x00,j=0x00;
	TRISC &= 0xf7; //DT_CLK OUTPUT
	TRISC &= 0xef; //DT_DAT OUTPUT
	TRISC &= 0xdf; //DT_ACK INTPUT
	DT_ACK=true;
	DT_CLK=true;
	DT_DAT=true;
	SendData(5,DT_sync_buf);
	SendData(d_size,dat);

	
	TRISC &= 0xf7; //DT_CLK OUTPUT
	TRISC |= 0x10; //DT_DAT INPUT 
	TRISC |= 0x20; //DT_ACK INPUT 
}
/////////////////////////////////////////////////////////////////////////////////
void SendData(unsigned char size,unsigned char *dt)
{
	unsigned char i = 0x00,j=0x00;
	for(i = 0 ;i<size;i++)
		{
			for(j=0;j<8;j++)
			{
				DT_CLK=false;//主机发送时钟下降沿 通知从机接收数据
				if((*dt)&(0x80>>j))
					{ //发送1
						DT_DAT = true; 
					}
				else
					{//发送0
						DT_DAT = false; 
					}	
				while(!DT_ACK){;}//等待从机ACK下降沿 确认接收
					DT_CLK=true; //造成上升沿 通知从机确认完成
			}
			dt++;
		}
}
//////////////////////////////////////////////////////////////////////////////////////////////////
//主机数据接收
//参数 d_size 数据字节数 *dat 数据指针 cs 从单片机片选
void DTRecv(unsigned char d_size,unsigned char *dat ,unsigned char cs)
{
	unsigned char i = 0x00,j=0x00;

	TRISC &= 0xf7; //DT_CLK OUTPUT
	TRISC |= 0x10; //DT_DAT INPUT 
	TRISC |= 0x20; //DT_ACK INPUT 
	DT_CLK = true;
	DT_ACK = true;
	DT_DAT = true;
	if(cs==MCU1_CS)
		{
			MCU1_CS=false;
		}
	else if(cs==MCU2_CS)
		{
			MCU2_CS=false;
		}

	*dat = 0x00; //清空
	for(i = 0 ;i<d_size;i++)
		{
			for(j=0;j<8;j++)
				{
					DT_CLK=false;//主机发送时钟下降沿 通知从机发送数据
					while(DT_ACK){;}//等待从机应答ACK下降沿
					if(DT_DAT)
						{
							*dat |= (0x80>>j); //从最高位开始填充数据
						}
				
					DT_CLK=true; //造成上升沿 通知从机确认完成
				}
			dat++;
			*dat = 0x00; //清空
		}
	TRISC &= 0xf7; //DT_CLK OUTPUT
	TRISC |= 0x10; //DT_DAT INPUT 
	TRISC |= 0x20; //DT_ACK INPUT 
	DT_CLK = true;
	DT_ACK = true;
	DT_DAT = true;

		
}
void CAN_2_DT(unsigned char dt_comd  ,unsigned char *can_dt,unsigned char cs_num)
{
	unsigned char i=0x00,j=0x00,cs1=0x00,cs2=0x00;
	DT_command=dt_comd;
	switch (DT_command)
		{
			case DTRdDETECTED:  //从设备回复给主设备8个通道的检测结果，数据参数为8个通道的检测结果，使用一个字节表示
				DT_data1_counter=1;
				break;
			case DTRSTATE:		//从设备回复给主设备8个通道的通道状态，数据参数为4个字节的通道状态
				DT_data1_counter=4;
				break;
			case DTRSENSLV://从设备回复给主设备8个通道的灵敏度等级，后带4个字节参数，每半个字节表示一个通道
				DT_data1_counter=4;
				break;
			case DTRFREQUENCY:	//从设备回复给主设备8个通道的震荡设置，后带2个字节的参数
				DT_data1_counter=2;
				break;
			case DTRSENS:	//从设备回复给主设备灵敏度表。一个灵敏度表包含16个字节，分别表示16个灵敏度等级,作为检测器的检测参数
				DT_data1_counter=16;
				break;
			case DTWSENSLV://从设备接收灵敏度等级确认，实际发送数据也应带上字节数0
				DT_data1_counter=0;
				break;
			case DTWFREQUENCY:	//从设备接收震荡频率设置确认，实际发送数据也应带上字节数0
				DT_data1_counter=0;
				break;
			case DTWSENS:	//从设备接收灵敏度表确认，实际发送数据也应带上字节数0
				DT_data1_counter=0;
				break;
			default:
				DT_data1_counter=0;
				break;
		}
	DT_data[0]=DT_command;
	DT_data[1]=DT_data_counter;
	can_dt++;
	for(i=0;i<DT_data_counter;i++)
		{
			DT_data[i+2]= *can_dt;
			can_dt++;
		}
/*	if(!cs_num)
		{
			cs1=true;
			cs2=true;
		}
	else if(cs_num==1)
		{
			cs1=true;
			cs2=false;
		}
	else if(cs_num==2)
		{
			cs1=false;
			cs2=true;
		}

	if(cs1)
		{
*/			DTSend(DT_data_counter;DT_data;MCU1_CS);
			DTRecv(DT_data1_counter,DT_data1);
			for(i=0;i<DT_data1_counter;i++)
				{
					CAN_data[i+1]=DT_data1[i+2];
				}
/*		}
	if(cs2)
		{
			DTSend(DT_data_counter;DT_data;MCU2_CS);
			DTRecv(DT_data1_counter,DT_data1);
			for(i=0;i<DT_data1_counter;i++)
				{
					if(cs_num)
						{
							CAN_data[i+1]=DT_data1[i+2];
						}
					else
						{
							CAN_data[i+1+DT_data1_counter]=DT_data1[i+2];
						}
				}
		}
*/
	DTSend(DT_data_counter;DT_data;MCU2_CS);
	DTRecv(3,DT_data1);
	CAN_data[2]=DT_data1[3];
	CANSdlc=3;
}
////////////////////////////////////////////////////////////////////////////////////////////////
//CAN数据解析
void CANDATAAnalyzing(unsigned char id[],unsigned char dat[],unsigned char dlc)
{
//	unsigned char i;

	if((CANRid[0] != 0x09) || (CANRid[1] != 0x061)) //去除电源板
		{
			//解析帧的回复模式
			switch (((dat[0] & 0xc0)>>6))
				{
				case CANNOREPLY:
					f_r_mod= CANNOREPLY; //该帧不需要回复
					break;
				case CANRQREPLY:
					f_r_mod = CANRQREPLY;//该帧请求回复(回复的是板卡内部产生的数据)
					break;
				case CANCONFIRM:
					f_r_mod = CANCONFIRM;//该帧需要确认回复(回复的是主板发过来的数据以确认是否接收正确)
					break;
				case CANFBACK:
					f_r_mod = CANFBACK;//该帧不需要回复，备用
					break;
				default:
					f_r_mod = CANNOREPLY;//该帧不需要回复
					break;
				}

			{

						//数据要求确认回复
						if(f_r_mod ==CANCONFIRM)//回复确认
							{
								CANSendConfirm();
							}
						
						//解析该数据帧的具体用途
						switch ((dat[0] & 0x3f))
							{
							case CANREADID:
								//该帧用于读取板卡的ID信息
								if(f_r_mod ==CANRQREPLY) //有请求回复
									{
										CANSendID(CANREADID);
									}			
								break;
							case CANWRITEID:
								//该帧用于写入板卡的ID信息
									CANWriteID(f_r_mod);
								break;
							case CANCARSTATE://检测器发送16个通道的车辆检测状态
								CAN_data[0]=CANCARSTATE;
								DT_command=0x00;
								DT_data_counter=0x01;
								DT_data[0]=DT_command;
								DT_data[1]=DT_data_counter;
								DTSend(DT_data_counter;DT_data;MCU1_CS);
								DTRecv(3,DT_data1);
								CAN_data[1]=DT_data1[3];
								DTSend(DT_data_counter;DT_data;MCU2_CS);
								DTRecv(3,DT_data1);
								CAN_data[2]=DT_data1[3];
								CANSdlc=3;
								CANSend(CANSid,CANSdata,CANSdlc);
								
								break;
							case CANVELOCITY1://检测器发送1－4组测速线圈的平均速度
								
								break;
							case CANVELOCITY2://检测器发送5－8组测速线圈的平均速度
								//
								break;
							case CANSENSLV1://检测器发送1－8通道检测器的检测灵敏度等级
								CAN_data[0]=CANSENSLV1;
								DT_command=0x00;
								DT_data_counter=0x01;
								DT_data[0]=DT_command;
								DT_data[1]=DT_data_counter;
								DTSend(DT_data_counter;DT_data;MCU1_CS);
								DTRecv(3,DT_data1);
								CAN_data[1]=DT_data1[3];
								DTSend(DT_data_counter;DT_data;MCU2_CS);
								DTRecv(3,DT_data1);
								CAN_data[2]=DT_data1[3];
								CANSdlc=3;
								CANSend(CANSid,CANSdata,CANSdlc);
								break;
							case CANSENSLV2://检测器发送9－16通道检测器的检测灵敏度等级
								//
								break;
							case CANCOILSTATE1://检测器发送1－4测速线圈的绑定情况
								//
								break;	
							case CANCOILSTATE2://检测器发送5－16组测速线圈的线圈绑定情况
								//
								break;
							case CANCOILDISTANCE1://检测器发送1－4组测速线圈的线圈距离
								//
								break;
							case CANCOILDISTANCE2://检测器发送5－8组测速线圈的线圈距离
								//
								break;
							case CANSETSENSLV1://主板发送1－8通道灵敏度等级设置给检测器
								//
								break;
							case CANSETSENSLV2://主板发送9－16通道灵敏度等级设置给检测器
								//
								break;
							case CANSETCOILSTATE1://主板发送1－4组测速线圈的绑定数据给检测器
								//
								break;
							case CANSETCOILSTATE2://主板发送5－8组测速线圈的绑定数据给检测器
								//
								break;
							case CANSETCOILDISTANCE1://主板发送1－4组测速线圈的线圈距离给检测器
								//
								break;
							case CANSETCOILDISTANCE2://主板发送5－8组测速线圈的线圈距离给检测器
								//
								break;
							case CANDETECTSTATE://检测器发送16个通道的检测器工作状态
								//
								break;
							case CANREDSENS1://检测器发送1－7级的灵敏度数值
								//
								break;
							case CANREDSENS2://检测器发送8－14级的灵敏度数值
								//
								break;
							case CANREDSENS3://检测器发送15－16级的灵敏度数值
								//
								break;
							case CANSETSENS1://主板发送1－7级的灵敏度数值给检测器
								//
								break;
							case CANSETSENS2://主板发送8－14级的灵敏度数值给检测器
								//
								break;
							case CANSETSENS3://主板发送15－16级的灵敏度数值给检测器
								//
								break;
							case CANFREQUENCYSTATE://检测器发送16个通道的震荡频率设置
								//
								break;
							case CANSETFREQUENCY://主板发送16个通道的震荡频率设置给检测器
								//
								break;
							case CANWORKMOD://主板设置检测器的工作方式
								//
								break;
							default:
								//该帧表示的是未定义数据
								CANSendTest();
								break;
							}

						master_time_cont = 0x00;//清零计数器
						sta = STA_MASTER_OK; //置于主机正确状态
				}
		}
}

