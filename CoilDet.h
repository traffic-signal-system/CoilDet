//灯控电源板相关特殊定义
#define MY_ID 0x00

#define ADDR_ID 0x0000 //板卡ID存储首地址
#define NUM_ID  4      //板卡ID信息字节数 
#define ADDR_CFG 0x0004 //板卡配置数据存储首地址
#define NUM_CFG  1      //板卡配置数据字节数 

#define ADDR_SENS_LV  0x0005 //灵敏度等级
#define NUM_SENS_LV  4  //灵敏度等级字节数
#define ADDR_SENS  0x0009 //灵敏度表
#define NUM_SENS   16     // 灵敏度表字节数
#define ADDR_OSC_CFG 0x0019 //振荡频率配置数据
#define NUM_OSC_CFG  2  //振荡频率设置字节数

//////////////////////////////////////////////////
//SPI通信
#define SYNCCODE1 0x11 //SPI同步码第一个字节
#define SYNCCODE2 0x22 //SPI同步码第一个字节
#define SYNCCODE3 0x33 //SPI同步码第一个字节
#define SYNCCODE4 0x44 //SPI同步码第一个字节
#define SYNCCODE5 0x55 //SPI同步码第一个字节

#define SPICOMD_GET_RESULT 0X00 //SPI命令字 取得检测结果
#define SPICOMD_GET_STATUS 0X01 //SPI命令字 取得通道状态
#define SPICOMD_GET_SENS_LV 0X02 //SPI命令字 取得灵敏度等级
#define SPICOMD_GET_OSC_CFG 0X03 //SPI命令字 取得震荡配置
#define SPICOMD_GET_SENS 0X04 //SPI命令字 取得灵敏度表
#define SPICOMD_SET_SENS_LV 0X05 //SPI命令字 设置灵敏度等级
#define SPICOMD_SET_OSC_CFG 0X06 //SPI命令字 设置震荡配置
#define SPICOMD_SET_SENS 0X07 //SPI命令字 设置灵敏度表

//////////////////////////////////////////////////
//输出端口定义
#define LED_RUN RB4   //管理单片机才有运行灯与CAN指示灯
#define LED_CAN RA0

#define TRIG_CH1 RD0  //触发通道1
#define TRIG_CH2 RD1  //触发通道2
#define TRIG_CH3 RD2  //触发通道3
#define TRIG_CH4 RD3  //触发通道4
#define TRIG_CH5 RD4  //触发通道5
#define TRIG_CH6 RD5  //触发通道6
#define TRIG_CH7 RD6  //触发通道7
#define TRIG_CH8 RD7  //触发通道8

#define LED_CH1 RC0  //输出通道1
#define LED_CH2 RC1  //输出通道2
#define LED_CH3 RC2  //输出通道3
#define LED_CH4 RC6  //输出通道4
#define LED_CH5 RC7  //输出通道5
#define LED_CH6 RA1  //输出通道6
#define LED_CH7 RA2  //输出通道7
#define LED_CH8 RA3  //输出通道8

#define HC595_SFT RB0  //74 595 shift
#define HC595_LCH RB1  //74 595 latch
#define HC595_RST RB2  //74 595 reset
#define HC595_OE RB3  //74 595 OE
#define HC595_SDI RB4  //74 595 SDI

#define CLK_IN RB5 //震荡输入引脚


#define MCU1_CS RE0 //检测单片机1 cs控制端  用于通信管理
#define MCU2_CS RE1 //检测单片机2 cs控制端  用于通信管理
#define MCU_CS RA5  //检测单片机 cs控制端 用于检测单片机

#define DT_CLK RC3   	//模拟串口时钟引脚
#define DT_DAT RC4		//模拟串口数据引脚
#define DT_ACK RC5   	//模拟串口应答引脚

/////////////////////////////////////////////////////


























