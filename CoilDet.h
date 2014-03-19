//�ƿص�Դ��������ⶨ��
#define MY_ID 0x00

#define ADDR_ID 0x0000 //�忨ID�洢�׵�ַ
#define NUM_ID  4      //�忨ID��Ϣ�ֽ��� 
#define ADDR_CFG 0x0004 //�忨�������ݴ洢�׵�ַ
#define NUM_CFG  1      //�忨���������ֽ��� 

#define ADDR_SENS_LV  0x0005 //�����ȵȼ�
#define NUM_SENS_LV  4  //�����ȵȼ��ֽ���
#define ADDR_SENS  0x0009 //�����ȱ�
#define NUM_SENS   16     // �����ȱ��ֽ���
#define ADDR_OSC_CFG 0x0019 //��Ƶ����������
#define NUM_OSC_CFG  2  //��Ƶ�������ֽ���

//////////////////////////////////////////////////
//SPIͨ��
#define SYNCCODE1 0x11 //SPIͬ�����һ���ֽ�
#define SYNCCODE2 0x22 //SPIͬ�����һ���ֽ�
#define SYNCCODE3 0x33 //SPIͬ�����һ���ֽ�
#define SYNCCODE4 0x44 //SPIͬ�����һ���ֽ�
#define SYNCCODE5 0x55 //SPIͬ�����һ���ֽ�

#define SPICOMD_GET_RESULT 0X00 //SPI������ ȡ�ü����
#define SPICOMD_GET_STATUS 0X01 //SPI������ ȡ��ͨ��״̬
#define SPICOMD_GET_SENS_LV 0X02 //SPI������ ȡ�������ȵȼ�
#define SPICOMD_GET_OSC_CFG 0X03 //SPI������ ȡ��������
#define SPICOMD_GET_SENS 0X04 //SPI������ ȡ�������ȱ�
#define SPICOMD_SET_SENS_LV 0X05 //SPI������ ���������ȵȼ�
#define SPICOMD_SET_OSC_CFG 0X06 //SPI������ ����������
#define SPICOMD_SET_SENS 0X07 //SPI������ ���������ȱ�

//////////////////////////////////////////////////
//����˿ڶ���
#define LED_RUN RB4   //����Ƭ���������е���CANָʾ��
#define LED_CAN RA0

#define TRIG_CH1 RD0  //����ͨ��1
#define TRIG_CH2 RD1  //����ͨ��2
#define TRIG_CH3 RD2  //����ͨ��3
#define TRIG_CH4 RD3  //����ͨ��4
#define TRIG_CH5 RD4  //����ͨ��5
#define TRIG_CH6 RD5  //����ͨ��6
#define TRIG_CH7 RD6  //����ͨ��7
#define TRIG_CH8 RD7  //����ͨ��8

#define LED_CH1 RC0  //���ͨ��1
#define LED_CH2 RC1  //���ͨ��2
#define LED_CH3 RC2  //���ͨ��3
#define LED_CH4 RC6  //���ͨ��4
#define LED_CH5 RC7  //���ͨ��5
#define LED_CH6 RA1  //���ͨ��6
#define LED_CH7 RA2  //���ͨ��7
#define LED_CH8 RA3  //���ͨ��8

#define HC595_SFT RB0  //74 595 shift
#define HC595_LCH RB1  //74 595 latch
#define HC595_RST RB2  //74 595 reset
#define HC595_OE RB3  //74 595 OE
#define HC595_SDI RB4  //74 595 SDI

#define CLK_IN RB5 //����������


#define MCU1_CS RE0 //��ⵥƬ��1 cs���ƶ�  ����ͨ�Ź���
#define MCU2_CS RE1 //��ⵥƬ��2 cs���ƶ�  ����ͨ�Ź���
#define MCU_CS RA5  //��ⵥƬ�� cs���ƶ� ���ڼ�ⵥƬ��

#define DT_CLK RC3   	//ģ�⴮��ʱ������
#define DT_DAT RC4		//ģ�⴮����������
#define DT_ACK RC5   	//ģ�⴮��Ӧ������

/////////////////////////////////////////////////////


























