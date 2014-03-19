












#include <PIC18F45K80.h>
#include <htc.h>
#include "CAN.H"
#include "SIN.H"

#include "mcu.h"
#include "CoilDet.H"


#define STA_MECH_ON 0X01 //����״̬
#define STA_CAN_OK 0X02 //CAN ͨ������
#define STA_MASTER_OK 0X03 //�������ݾ�������
#define STA_LAMP_OK 0X04 //���յ��µĵ�ɫ����״̬
#define STA_MASTER_ERR 0X05 //��������״̬


#define CAN_TIMEOUT 100 //CAN����ͨ�ų�ʱ����
#define MASTER_TIMEOUT 250 //����ͨ�ų�ʱ����


///////////////////////////////////////////////////////
//CANͨ��Э������õ��Ķ���
#define CANNOREPLY 0x00 //֡����Ҫ�ظ�
#define CANRQREPLY 0x01  //֡�����ط�
#define CANCONFIRM 0x02 //֡����ȷ��
#define CANFBACK 0x03  //����

#define CANREADID 0X00 //��ȡģ��/�忨��ID
#define CANWRITEID 0X01 //д��ģ��/�忨��ID

#define CANCOMWLDD 0x02 //�������ƿذ�д���ɫ��ʾ����
#define CANCOMWCOF 0x03 //�������ƿذ�д����������
#define CANCOMRLD 0x04 //��������ƿذ巢�͵��ݼ������
#define CANCOMRLI1 0x05 //��������ƿذ巢��1 3 4ͨ����������
#define CANCOMRLI2 0x06 //��������ƿذ巢��6 7 8ͨ����������
#define CANCOMRLI3 0x07 //��������ƿذ巢��10 12ͨ����������
#define CANCOMRTEMP 0x08 //��������ƿذ巢��Ƭ���¶ȼ������

#define CANCARSTATE 0x02 //����������������16��ͨ���ĳ������״̬
#define CANVELOCITY1 0x03 //���ذ�������������1-4�������Ȧ��ƽ���ٶ�
#define CANVELOCITY2 0x04 //���ذ�������������5-8�������Ȧ��ƽ���ٶ�
#define CANSENSLV1 0x05 //���ذ�������������1-8ͨ��������ļ�������ȵȼ�
#define CANSENSLV2 0x06 //���ذ�������������9-16ͨ��������ļ�������ȵȼ�
#define CANCOILSTATE1 0x07 //���ذ�������������1-4�������Ȧ�İ����
#define CANCOILSTATE2 0x08 //���ذ�������������5-16�������Ȧ�İ����
#define CANCOILDISTANCE1 0x09 //���ذ�������������1-4�������Ȧ����Ȧ����
#define CANCOILDISTANCE2 0x0a //���ذ�������������5-8�������Ȧ����Ȧ����
#define CANSETSENSLV1 0x0b //���ذ巢��1-8ͨ�������ȵȼ����ø������
#define CANSETSENSLV2 0x0c //���ذ巢��9-16ͨ�������ȵȼ����ø������
#define CANSETCOILSTATE1 0x0d //���ذ巢��1-4�������Ȧ�İ����ݸ��������
#define CANSETCOILSTATE2 0c0e //���ذ巢��5-8�������Ȧ�İ����ݸ��������
#define CANSETCOILDISTANCE1 0x0f //���ذ巢��1-4�������Ȧ����Ȧ������������
#define CANSETCOILDISTANCE2 0x10 //���ذ巢��5-8�������Ȧ����Ȧ������������
#define CANDETECTSTATE 0x11 //���ذ�������������16��ͨ���ļ��������״̬
#define CANREDSENS1 0x12 //���ذ�������������1-7������������ֵ
#define CANREDSENS2 0x13 //���ذ�������������8-14������������ֵ
#define CANREDSENS3 0x14 //���ذ�������������15-16������������ֵ
#define CANSETSENS1 0x15 //���ذ��·�1-7������������ֵ�������
#define CANSETSENS2 0x16 //���ذ��·�8-14������������ֵ�������
#define CANSETSENS3 0x17 //���ذ��·�15-16������������ֵ�������
#define CANFREQUENCYSTATE 0x18 //���ذ�������������16��ͨ������Ƶ������
#define CANSETFREQUENCY 0x19 //���ذ巢�͸������16��ͨ������Ƶ������
#define CANWORKMOD 0x1a //���ذ����ü�����Ĺ�����ʽ

unsigned char f_r_mod = CANNOREPLY; //֡�ظ�״̬



//////////////////////////////////////////////////////

unsigned char CANRid[4]={0,0,0,0}; 
unsigned char CANRdata[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},CANRdlc = 8; 
unsigned char CANSid[4]={0,0,0,0}; 
unsigned char CANSdata[8]={0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00},CANSdlc = 8; 



/////////////////////////////////////////////////////////////////////////////////////////////
//��Ƭ�������ݴ����õ��Ķ���
unsigned char DT_command = 0xff; //���ݴ���������
unsigned char DT_data_counter = 0x00;//���ݴ����������
unsigned char DT_data1_counter= 0x00;//���ݽ��ղ�������

unsigned char DT_data[18] ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; //�������ݲ���������
unsigned char DT_sync_buf[5] = {0x11,0x22,0x33,0x44,0x55}; //���ݴ����ͬ����
unsigned char DT_data1[18] ={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0}; //�������ݲ���������
unsigned char CAN_data[18]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};//CAN���ݴ����ͻ�����

//////////////////////////////////////////////////////////////////////////////////
//CAN����ȷ�ϻظ�
//�����յ���CAN������ԭ�����
//����ID�Լ��ظ�ģʽ
void CANSendConfirm(void)
{
	unsigned char i;

	for(i=0;i<8;i++)
		{
			CANSdata[i] = CANRdata[i];
		}
	CANSdata[0] &= 0x3f; //���ظ�ģʽ����Ϊ00 ����Ҫ�ظ�
	CANSdlc = CANRdlc;
	CANSend(CANSid,CANSdata,CANSdlc);
}
//////////////////////////////////////////////////////////////////////////////////
//CAN���Ͱ��ID������
void CANSendID(unsigned char sm)
{

	CANSdlc = NUM_ID + 1;

	if(sm == CANREADID)
		CANSdata[0] = CANREADID; //����Ҫ�ظ�,���͵���ID
	else
		CANSdata[0] = CANWRITEID; //����Ҫ�ظ�,���͵���ID

	//��EEPROM�ж�ȡID��Ϣ
	eeprom_addr = ADDR_ID;
	eeprom_num = NUM_ID;
	EEPROMRead(&eeprom_addr,&eeprom_num,(CANSdata+1));
	CANSend(CANSid,CANSdata,CANSdlc);
}
//////////////////////////////////////////////////////////////////////////////////
//CAN���Ͱ��ID������ ��ID��Ϣд�뵽EEPROM ����֡����ظ�ID��Ϣ
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
//������������
//���� d_size �����ֽ��� *dat ����ָ�� cs �ӵ�Ƭ��Ƭѡ
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
				DT_CLK=false;//��������ʱ���½��� ֪ͨ�ӻ���������
				if((*dt)&(0x80>>j))
					{ //����1
						DT_DAT = true; 
					}
				else
					{//����0
						DT_DAT = false; 
					}	
				while(!DT_ACK){;}//�ȴ��ӻ�ACK�½��� ȷ�Ͻ���
					DT_CLK=true; //��������� ֪ͨ�ӻ�ȷ�����
			}
			dt++;
		}
}
//////////////////////////////////////////////////////////////////////////////////////////////////
//�������ݽ���
//���� d_size �����ֽ��� *dat ����ָ�� cs �ӵ�Ƭ��Ƭѡ
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

	*dat = 0x00; //���
	for(i = 0 ;i<d_size;i++)
		{
			for(j=0;j<8;j++)
				{
					DT_CLK=false;//��������ʱ���½��� ֪ͨ�ӻ���������
					while(DT_ACK){;}//�ȴ��ӻ�Ӧ��ACK�½���
					if(DT_DAT)
						{
							*dat |= (0x80>>j); //�����λ��ʼ�������
						}
				
					DT_CLK=true; //��������� ֪ͨ�ӻ�ȷ�����
				}
			dat++;
			*dat = 0x00; //���
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
			case DTRdDETECTED:  //���豸�ظ������豸8��ͨ���ļ���������ݲ���Ϊ8��ͨ���ļ������ʹ��һ���ֽڱ�ʾ
				DT_data1_counter=1;
				break;
			case DTRSTATE:		//���豸�ظ������豸8��ͨ����ͨ��״̬�����ݲ���Ϊ4���ֽڵ�ͨ��״̬
				DT_data1_counter=4;
				break;
			case DTRSENSLV://���豸�ظ������豸8��ͨ���������ȵȼ������4���ֽڲ�����ÿ����ֽڱ�ʾһ��ͨ��
				DT_data1_counter=4;
				break;
			case DTRFREQUENCY:	//���豸�ظ������豸8��ͨ���������ã����2���ֽڵĲ���
				DT_data1_counter=2;
				break;
			case DTRSENS:	//���豸�ظ������豸�����ȱ�һ�������ȱ����16���ֽڣ��ֱ��ʾ16�������ȵȼ�,��Ϊ������ļ�����
				DT_data1_counter=16;
				break;
			case DTWSENSLV://���豸���������ȵȼ�ȷ�ϣ�ʵ�ʷ�������ҲӦ�����ֽ���0
				DT_data1_counter=0;
				break;
			case DTWFREQUENCY:	//���豸������Ƶ������ȷ�ϣ�ʵ�ʷ�������ҲӦ�����ֽ���0
				DT_data1_counter=0;
				break;
			case DTWSENS:	//���豸���������ȱ�ȷ�ϣ�ʵ�ʷ�������ҲӦ�����ֽ���0
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
//CAN���ݽ���
void CANDATAAnalyzing(unsigned char id[],unsigned char dat[],unsigned char dlc)
{
//	unsigned char i;

	if((CANRid[0] != 0x09) || (CANRid[1] != 0x061)) //ȥ����Դ��
		{
			//����֡�Ļظ�ģʽ
			switch (((dat[0] & 0xc0)>>6))
				{
				case CANNOREPLY:
					f_r_mod= CANNOREPLY; //��֡����Ҫ�ظ�
					break;
				case CANRQREPLY:
					f_r_mod = CANRQREPLY;//��֡����ظ�(�ظ����ǰ忨�ڲ�����������)
					break;
				case CANCONFIRM:
					f_r_mod = CANCONFIRM;//��֡��Ҫȷ�ϻظ�(�ظ��������巢������������ȷ���Ƿ������ȷ)
					break;
				case CANFBACK:
					f_r_mod = CANFBACK;//��֡����Ҫ�ظ�������
					break;
				default:
					f_r_mod = CANNOREPLY;//��֡����Ҫ�ظ�
					break;
				}

			{

						//����Ҫ��ȷ�ϻظ�
						if(f_r_mod ==CANCONFIRM)//�ظ�ȷ��
							{
								CANSendConfirm();
							}
						
						//����������֡�ľ�����;
						switch ((dat[0] & 0x3f))
							{
							case CANREADID:
								//��֡���ڶ�ȡ�忨��ID��Ϣ
								if(f_r_mod ==CANRQREPLY) //������ظ�
									{
										CANSendID(CANREADID);
									}			
								break;
							case CANWRITEID:
								//��֡����д��忨��ID��Ϣ
									CANWriteID(f_r_mod);
								break;
							case CANCARSTATE://���������16��ͨ���ĳ������״̬
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
							case CANVELOCITY1://���������1��4�������Ȧ��ƽ���ٶ�
								
								break;
							case CANVELOCITY2://���������5��8�������Ȧ��ƽ���ٶ�
								//
								break;
							case CANSENSLV1://���������1��8ͨ��������ļ�������ȵȼ�
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
							case CANSENSLV2://���������9��16ͨ��������ļ�������ȵȼ�
								//
								break;
							case CANCOILSTATE1://���������1��4������Ȧ�İ����
								//
								break;	
							case CANCOILSTATE2://���������5��16�������Ȧ����Ȧ�����
								//
								break;
							case CANCOILDISTANCE1://���������1��4�������Ȧ����Ȧ����
								//
								break;
							case CANCOILDISTANCE2://���������5��8�������Ȧ����Ȧ����
								//
								break;
							case CANSETSENSLV1://���巢��1��8ͨ�������ȵȼ����ø������
								//
								break;
							case CANSETSENSLV2://���巢��9��16ͨ�������ȵȼ����ø������
								//
								break;
							case CANSETCOILSTATE1://���巢��1��4�������Ȧ�İ����ݸ������
								//
								break;
							case CANSETCOILSTATE2://���巢��5��8�������Ȧ�İ����ݸ������
								//
								break;
							case CANSETCOILDISTANCE1://���巢��1��4�������Ȧ����Ȧ����������
								//
								break;
							case CANSETCOILDISTANCE2://���巢��5��8�������Ȧ����Ȧ����������
								//
								break;
							case CANDETECTSTATE://���������16��ͨ���ļ��������״̬
								//
								break;
							case CANREDSENS1://���������1��7������������ֵ
								//
								break;
							case CANREDSENS2://���������8��14������������ֵ
								//
								break;
							case CANREDSENS3://���������15��16������������ֵ
								//
								break;
							case CANSETSENS1://���巢��1��7������������ֵ�������
								//
								break;
							case CANSETSENS2://���巢��8��14������������ֵ�������
								//
								break;
							case CANSETSENS3://���巢��15��16������������ֵ�������
								//
								break;
							case CANFREQUENCYSTATE://���������16��ͨ������Ƶ������
								//
								break;
							case CANSETFREQUENCY://���巢��16��ͨ������Ƶ�����ø������
								//
								break;
							case CANWORKMOD://�������ü�����Ĺ�����ʽ
								//
								break;
							default:
								//��֡��ʾ����δ��������
								CANSendTest();
								break;
							}

						master_time_cont = 0x00;//���������
						sta = STA_MASTER_OK; //����������ȷ״̬
				}
		}
}

