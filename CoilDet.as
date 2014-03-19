opt subtitle "HI-TECH Software Omniscient Code Generator (PRO mode) build 11162"

opt pagewidth 120

	opt pm

	processor	18F45K80
porta	equ	0F80h
portb	equ	0F81h
portc	equ	0F82h
portd	equ	0F83h
porte	equ	0F84h
lata	equ	0F89h
latb	equ	0F8Ah
latc	equ	0F8Bh
latd	equ	0F8Ch
late	equ	0F8Dh
trisa	equ	0F92h
trisb	equ	0F93h
trisc	equ	0F94h
trisd	equ	0F95h
trise	equ	0F96h
pie1	equ	0F9Dh
pir1	equ	0F9Eh
ipr1	equ	0F9Fh
pie2	equ	0FA0h
pir2	equ	0FA1h
ipr2	equ	0FA2h
t3con	equ	0FB1h
tmr3l	equ	0FB2h
tmr3h	equ	0FB3h
ccp1con	equ	0FBDh
ccpr1l	equ	0FBEh
ccpr1h	equ	0FBFh
adcon1	equ	0FC1h
adcon0	equ	0FC2h
adresl	equ	0FC3h
adresh	equ	0FC4h
sspcon2	equ	0FC5h
sspcon1	equ	0FC6h
sspstat	equ	0FC7h
sspadd	equ	0FC8h
sspbuf	equ	0FC9h
t2con	equ	0FCAh
pr2	equ	0FCBh
tmr2	equ	0FCCh
t1con	equ	0FCDh
tmr1l	equ	0FCEh
tmr1h	equ	0FCFh
rcon	equ	0FD0h
wdtcon	equ	0FD1h
lvdcon	equ	0FD2h
osccon	equ	0FD3h
t0con	equ	0FD5h
tmr0l	equ	0FD6h
tmr0h	equ	0FD7h
status	equ	0FD8h
fsr2	equ	0FD9h
fsr2l	equ	0FD9h
fsr2h	equ	0FDAh
plusw2	equ	0FDBh
preinc2	equ	0FDCh
postdec2	equ	0FDDh
postinc2	equ	0FDEh
indf2	equ	0FDFh
bsr	equ	0FE0h
fsr1	equ	0FE1h
fsr1l	equ	0FE1h
fsr1h	equ	0FE2h
plusw1	equ	0FE3h
preinc1	equ	0FE4h
postdec1	equ	0FE5h
postinc1	equ	0FE6h
indf1	equ	0FE7h
wreg	equ	0FE8h
fsr0	equ	0FE9h
fsr0l	equ	0FE9h
fsr0h	equ	0FEAh
plusw0	equ	0FEBh
preinc0	equ	0FECh
postdec0	equ	0FEDh
postinc0	equ	0FEEh
indf0	equ	0FEFh
intcon3	equ	0FF0h
intcon2	equ	0FF1h
intcon	equ	0FF2h
prod	equ	0FF3h
prodl	equ	0FF3h
prodh	equ	0FF4h
tablat	equ	0FF5h
tblptr	equ	0FF6h
tblptrl	equ	0FF6h
tblptrh	equ	0FF7h
tblptru	equ	0FF8h
pcl	equ	0FF9h
pclat	equ	0FFAh
pclath	equ	0FFAh
pclatu	equ	0FFBh
stkptr	equ	0FFCh
tosl	equ	0FFDh
tosh	equ	0FFEh
tosu	equ	0FFFh
skipnz macro
	btfsc	status,2
	endm
	global	__ramtop
	global	__accesstop
# 19 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXERRCNT equ 0E41h ;# 
# 41 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXERRCNT equ 0E42h ;# 
# 63 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BRGCON1 equ 0E43h ;# 
# 86 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BRGCON2 equ 0E44h ;# 
# 113 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BRGCON3 equ 0E45h ;# 
# 133 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFCON0 equ 0E46h ;# 
# 152 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFCON1 equ 0E47h ;# 
# 171 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF6SIDH equ 0E48h ;# 
# 224 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF6SIDL equ 0E49h ;# 
# 271 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF6EIDH equ 0E4Ah ;# 
# 324 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF6EIDL equ 0E4Bh ;# 
# 377 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF7SIDH equ 0E4Ch ;# 
# 430 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF7SIDL equ 0E4Dh ;# 
# 477 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF7EIDH equ 0E4Eh ;# 
# 530 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF7EIDL equ 0E4Fh ;# 
# 583 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF8SIDH equ 0E50h ;# 
# 636 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF8SIDL equ 0E51h ;# 
# 683 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF8EIDH equ 0E52h ;# 
# 736 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF8EIDL equ 0E53h ;# 
# 789 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF9SIDH equ 0E54h ;# 
# 842 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF9SIDL equ 0E55h ;# 
# 889 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF9EIDH equ 0E56h ;# 
# 942 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF9EIDL equ 0E57h ;# 
# 995 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF10SIDH equ 0E58h ;# 
# 1048 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF10SIDL equ 0E59h ;# 
# 1095 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF10EIDH equ 0E5Ah ;# 
# 1148 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF10EIDL equ 0E5Bh ;# 
# 1201 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF11SIDH equ 0E5Ch ;# 
# 1254 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF11SIDL equ 0E5Dh ;# 
# 1301 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF11EIDH equ 0E5Eh ;# 
# 1354 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF11EIDL equ 0E5Fh ;# 
# 1407 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF12SIDH equ 0E60h ;# 
# 1460 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF12SIDL equ 0E61h ;# 
# 1507 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF12EIDH equ 0E62h ;# 
# 1560 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF12EIDL equ 0E63h ;# 
# 1613 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF13SIDH equ 0E64h ;# 
# 1666 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF13SIDL equ 0E65h ;# 
# 1713 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF13EIDH equ 0E66h ;# 
# 1766 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF13EIDL equ 0E67h ;# 
# 1819 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF14SIDH equ 0E68h ;# 
# 1872 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF14SIDL equ 0E69h ;# 
# 1919 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF14EIDH equ 0E6Ah ;# 
# 1972 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF14EIDL equ 0E6Bh ;# 
# 2025 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF15SIDH equ 0E6Ch ;# 
# 2078 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF15SIDL equ 0E6Dh ;# 
# 2125 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF15EIDH equ 0E6Eh ;# 
# 2178 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF15EIDL equ 0E6Fh ;# 
# 2231 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SDFLC equ 0E70h ;# 
# 2250 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON0 equ 0E71h ;# 
# 2276 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON1 equ 0E72h ;# 
# 2302 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON2 equ 0E73h ;# 
# 2328 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON3 equ 0E74h ;# 
# 2354 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON4 equ 0E75h ;# 
# 2380 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON5 equ 0E76h ;# 
# 2406 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON6 equ 0E77h ;# 
# 2432 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXFBCON7 equ 0E78h ;# 
# 2458 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
MSEL0 equ 0E79h ;# 
# 2483 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
MSEL1 equ 0E7Ah ;# 
# 2508 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
MSEL2 equ 0E7Bh ;# 
# 2533 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
MSEL3 equ 0E7Ch ;# 
# 2558 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BSEL0 equ 0E7Dh ;# 
# 2576 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BIE0 equ 0E7Eh ;# 
# 2602 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXBIE equ 0E7Fh ;# 
# 2629 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0CON equ 0E80h ;# 
# 2740 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0SIDH equ 0E81h ;# 
# 2793 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0SIDL equ 0E82h ;# 
# 2844 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0EIDH equ 0E83h ;# 
# 2897 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0EIDL equ 0E84h ;# 
# 2950 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0DLC equ 0E85h ;# 
# 3004 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D0 equ 0E86h ;# 
# 3026 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D1 equ 0E87h ;# 
# 3048 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D2 equ 0E88h ;# 
# 3070 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D3 equ 0E89h ;# 
# 3092 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D4 equ 0E8Ah ;# 
# 3114 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D5 equ 0E8Bh ;# 
# 3136 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D6 equ 0E8Ch ;# 
# 3158 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B0D7 equ 0E8Dh ;# 
# 3180 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO9 equ 0E8Eh ;# 
# 3221 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO9 equ 0E8Fh ;# 
# 3258 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1CON equ 0E90h ;# 
# 3369 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1SIDH equ 0E91h ;# 
# 3422 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1SIDL equ 0E92h ;# 
# 3473 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1EIDH equ 0E93h ;# 
# 3526 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1EIDL equ 0E94h ;# 
# 3579 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1DLC equ 0E95h ;# 
# 3633 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D0 equ 0E96h ;# 
# 3655 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D1 equ 0E97h ;# 
# 3677 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D2 equ 0E98h ;# 
# 3699 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D3 equ 0E99h ;# 
# 3721 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D4 equ 0E9Ah ;# 
# 3743 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D5 equ 0E9Bh ;# 
# 3765 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D6 equ 0E9Ch ;# 
# 3787 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B1D7 equ 0E9Dh ;# 
# 3809 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO8 equ 0E9Eh ;# 
# 3850 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO8 equ 0E9Fh ;# 
# 3887 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2CON equ 0EA0h ;# 
# 3998 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2SIDH equ 0EA1h ;# 
# 4051 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2SIDL equ 0EA2h ;# 
# 4106 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2EIDH equ 0EA3h ;# 
# 4159 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2EIDL equ 0EA4h ;# 
# 4212 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2DLC equ 0EA5h ;# 
# 4266 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D0 equ 0EA6h ;# 
# 4288 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D1 equ 0EA7h ;# 
# 4310 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D2 equ 0EA8h ;# 
# 4332 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D3 equ 0EA9h ;# 
# 4354 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D4 equ 0EAAh ;# 
# 4376 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D5 equ 0EABh ;# 
# 4398 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D6 equ 0EACh ;# 
# 4420 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B2D7 equ 0EADh ;# 
# 4442 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO7 equ 0EAEh ;# 
# 4483 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO7 equ 0EAFh ;# 
# 4520 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3CON equ 0EB0h ;# 
# 4631 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3SIDH equ 0EB1h ;# 
# 4684 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3SIDL equ 0EB2h ;# 
# 4739 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3EIDH equ 0EB3h ;# 
# 4792 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3EIDL equ 0EB4h ;# 
# 4845 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3DLC equ 0EB5h ;# 
# 4899 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D0 equ 0EB6h ;# 
# 4921 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D1 equ 0EB7h ;# 
# 4943 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D2 equ 0EB8h ;# 
# 4965 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D3 equ 0EB9h ;# 
# 4987 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D4 equ 0EBAh ;# 
# 5009 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D5 equ 0EBBh ;# 
# 5031 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D6 equ 0EBCh ;# 
# 5053 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B3D7 equ 0EBDh ;# 
# 5075 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO6 equ 0EBEh ;# 
# 5116 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO6 equ 0EBFh ;# 
# 5153 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4CON equ 0EC0h ;# 
# 5264 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4SIDH equ 0EC1h ;# 
# 5317 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4SIDL equ 0EC2h ;# 
# 5372 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4EIDH equ 0EC3h ;# 
# 5425 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4EIDL equ 0EC4h ;# 
# 5478 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4DLC equ 0EC5h ;# 
# 5532 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D0 equ 0EC6h ;# 
# 5554 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D1 equ 0EC7h ;# 
# 5576 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D2 equ 0EC8h ;# 
# 5598 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D3 equ 0EC9h ;# 
# 5620 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D4 equ 0ECAh ;# 
# 5642 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D5 equ 0ECBh ;# 
# 5664 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D6 equ 0ECCh ;# 
# 5686 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B4D7 equ 0ECDh ;# 
# 5708 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO5 equ 0ECEh ;# 
# 5749 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO5 equ 0ECFh ;# 
# 5786 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5CON equ 0ED0h ;# 
# 5897 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5SIDH equ 0ED1h ;# 
# 5950 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5SIDL equ 0ED2h ;# 
# 6005 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5EIDH equ 0ED3h ;# 
# 6058 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5EIDL equ 0ED4h ;# 
# 6111 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5DLC equ 0ED5h ;# 
# 6165 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D0 equ 0ED6h ;# 
# 6187 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D1 equ 0ED7h ;# 
# 6209 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D2 equ 0ED8h ;# 
# 6231 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D3 equ 0ED9h ;# 
# 6253 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D4 equ 0EDAh ;# 
# 6275 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D5 equ 0EDBh ;# 
# 6297 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D6 equ 0EDCh ;# 
# 6319 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
B5D7 equ 0EDDh ;# 
# 6341 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO4 equ 0EDEh ;# 
# 6382 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO4 equ 0EDFh ;# 
# 6419 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF0SIDH equ 0EE0h ;# 
# 6472 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF0SIDL equ 0EE1h ;# 
# 6519 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF0EIDH equ 0EE2h ;# 
# 6572 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF0EIDL equ 0EE3h ;# 
# 6625 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF1SIDH equ 0EE4h ;# 
# 6678 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF1SIDL equ 0EE5h ;# 
# 6725 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF1EIDH equ 0EE6h ;# 
# 6778 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF1EIDL equ 0EE7h ;# 
# 6831 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF2SIDH equ 0EE8h ;# 
# 6884 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF2SIDL equ 0EE9h ;# 
# 6931 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF2EIDH equ 0EEAh ;# 
# 6984 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF2EIDL equ 0EEBh ;# 
# 7037 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF3SIDH equ 0EECh ;# 
# 7090 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF3SIDL equ 0EEDh ;# 
# 7137 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF3EIDH equ 0EEEh ;# 
# 7190 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF3EIDL equ 0EEFh ;# 
# 7243 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF4SIDH equ 0EF0h ;# 
# 7296 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF4SIDL equ 0EF1h ;# 
# 7343 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF4EIDH equ 0EF2h ;# 
# 7396 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF4EIDL equ 0EF3h ;# 
# 7449 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF5SIDH equ 0EF4h ;# 
# 7502 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF5SIDL equ 0EF5h ;# 
# 7549 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF5EIDH equ 0EF6h ;# 
# 7602 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXF5EIDL equ 0EF7h ;# 
# 7655 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM0SIDH equ 0EF8h ;# 
# 7708 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM0SIDL equ 0EF9h ;# 
# 7755 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM0EIDH equ 0EFAh ;# 
# 7808 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM0EIDL equ 0EFBh ;# 
# 7861 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM1SIDH equ 0EFCh ;# 
# 7914 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM1SIDL equ 0EFDh ;# 
# 7961 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM1EIDH equ 0EFEh ;# 
# 8014 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXM1EIDL equ 0EFFh ;# 
# 8067 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2CON equ 0F00h ;# 
# 8116 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2SIDH equ 0F01h ;# 
# 8169 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2SIDL equ 0F02h ;# 
# 8216 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2EIDH equ 0F03h ;# 
# 8269 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2EIDL equ 0F04h ;# 
# 8322 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2DLC equ 0F05h ;# 
# 8361 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D0 equ 0F06h ;# 
# 8383 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D1 equ 0F07h ;# 
# 8405 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D2 equ 0F08h ;# 
# 8427 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D3 equ 0F09h ;# 
# 8449 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D4 equ 0F0Ah ;# 
# 8471 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D5 equ 0F0Bh ;# 
# 8493 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D6 equ 0F0Ch ;# 
# 8515 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB2D7 equ 0F0Dh ;# 
# 8537 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO3 equ 0F0Eh ;# 
# 8578 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO3 equ 0F0Fh ;# 
# 8615 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1CON equ 0F10h ;# 
# 8664 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1SIDH equ 0F11h ;# 
# 8717 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1SIDL equ 0F12h ;# 
# 8764 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1EIDH equ 0F13h ;# 
# 8817 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1EIDL equ 0F14h ;# 
# 8870 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1DLC equ 0F15h ;# 
# 8909 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D0 equ 0F16h ;# 
# 8931 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D1 equ 0F17h ;# 
# 8953 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D2 equ 0F18h ;# 
# 8975 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D3 equ 0F19h ;# 
# 8997 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D4 equ 0F1Ah ;# 
# 9019 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D5 equ 0F1Bh ;# 
# 9041 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D6 equ 0F1Ch ;# 
# 9063 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB1D7 equ 0F1Dh ;# 
# 9085 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO2 equ 0F1Eh ;# 
# 9126 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO2 equ 0F1Fh ;# 
# 9163 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0CON equ 0F20h ;# 
# 9212 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0SIDH equ 0F21h ;# 
# 9265 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0SIDL equ 0F22h ;# 
# 9312 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0EIDH equ 0F23h ;# 
# 9365 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0EIDL equ 0F24h ;# 
# 9418 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0DLC equ 0F25h ;# 
# 9457 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D0 equ 0F26h ;# 
# 9479 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D1 equ 0F27h ;# 
# 9501 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D2 equ 0F28h ;# 
# 9523 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D3 equ 0F29h ;# 
# 9545 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D4 equ 0F2Ah ;# 
# 9567 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D5 equ 0F2Bh ;# 
# 9589 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D6 equ 0F2Ch ;# 
# 9611 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXB0D7 equ 0F2Dh ;# 
# 9633 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO1 equ 0F2Eh ;# 
# 9674 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO1 equ 0F2Fh ;# 
# 9711 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1CON equ 0F30h ;# 
# 9781 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1SIDH equ 0F31h ;# 
# 9834 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1SIDL equ 0F32h ;# 
# 9885 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1EIDH equ 0F33h ;# 
# 9938 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1EIDL equ 0F34h ;# 
# 9991 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1DLC equ 0F35h ;# 
# 10040 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D0 equ 0F36h ;# 
# 10062 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D1 equ 0F37h ;# 
# 10084 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D2 equ 0F38h ;# 
# 10106 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D3 equ 0F39h ;# 
# 10128 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D4 equ 0F3Ah ;# 
# 10150 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D5 equ 0F3Bh ;# 
# 10172 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D6 equ 0F3Ch ;# 
# 10194 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB1D7 equ 0F3Dh ;# 
# 10216 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT_RO0 equ 0F3Eh ;# 
# 10257 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON_RO0 equ 0F3Fh ;# 
# 10294 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PSPCON equ 0F46h ;# 
# 10310 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCP5CON equ 0F47h ;# 
# 10336 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR5 equ 0F48h ;# 
# 10342 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR5L equ 0F48h ;# 
# 10354 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR5H equ 0F49h ;# 
# 10366 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCP4CON equ 0F4Ah ;# 
# 10392 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR4 equ 0F4Bh ;# 
# 10398 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR4L equ 0F4Bh ;# 
# 10410 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR4H equ 0F4Ch ;# 
# 10422 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCP3CON equ 0F4Dh ;# 
# 10448 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR3 equ 0F4Eh ;# 
# 10454 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR3L equ 0F4Eh ;# 
# 10466 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR3H equ 0F4Fh ;# 
# 10478 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCP2CON equ 0F50h ;# 
# 10483 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ECCP2CON equ 0F50h ;# 
# 10529 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR2 equ 0F51h ;# 
# 10535 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR2L equ 0F51h ;# 
# 10547 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR2H equ 0F52h ;# 
# 10559 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CTMUICON equ 0F53h ;# 
# 10582 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CTMUCONL equ 0F54h ;# 
# 10607 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CTMUCONH equ 0F55h ;# 
# 10626 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PADCFG1 equ 0F56h ;# 
# 10644 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PMD2 equ 0F57h ;# 
# 10658 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PMD1 equ 0F58h ;# 
# 10680 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PMD0 equ 0F59h ;# 
# 10707 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
IOCB equ 0F5Ah ;# 
# 10723 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
WPUB equ 0F5Bh ;# 
# 10742 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ANCON1 equ 0F5Ch ;# 
# 10787 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ANCON0 equ 0F5Dh ;# 
# 10837 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CM2CON equ 0F5Eh ;# 
# 10842 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CM2CON1 equ 0F5Eh ;# 
# 10946 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CM1CON equ 0F5Fh ;# 
# 10951 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CM1CON1 equ 0F5Fh ;# 
# 11069 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0CON equ 0F60h ;# 
# 11143 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0SIDH equ 0F61h ;# 
# 11196 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0SIDL equ 0F62h ;# 
# 11247 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0EIDH equ 0F63h ;# 
# 11300 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0EIDL equ 0F64h ;# 
# 11353 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0DLC equ 0F65h ;# 
# 11402 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D0 equ 0F66h ;# 
# 11424 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D1 equ 0F67h ;# 
# 11446 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D2 equ 0F68h ;# 
# 11468 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D3 equ 0F69h ;# 
# 11490 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D4 equ 0F6Ah ;# 
# 11512 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D5 equ 0F6Bh ;# 
# 11534 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D6 equ 0F6Ch ;# 
# 11556 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RXB0D7 equ 0F6Dh ;# 
# 11578 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANSTAT equ 0F6Eh ;# 
# 11619 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CANCON equ 0F6Fh ;# 
# 11656 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CIOCON equ 0F70h ;# 
# 11673 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
COMSTAT equ 0F71h ;# 
# 11722 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ECANCON equ 0F72h ;# 
# 11746 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
EEDATA equ 0F73h ;# 
# 11758 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
EEADR equ 0F74h ;# 
# 11770 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
EEADRH equ 0F75h ;# 
# 11782 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIE5 equ 0F76h ;# 
# 11807 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIR5 equ 0F77h ;# 
# 11832 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
IPR5 equ 0F78h ;# 
# 11872 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXREG2 equ 0F79h ;# 
# 11884 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCREG2 equ 0F7Ah ;# 
# 11896 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SPBRG2 equ 0F7Bh ;# 
# 11908 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SPBRGH2 equ 0F7Ch ;# 
# 11920 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SPBRGH1 equ 0F7Dh ;# 
# 11932 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
EECON2 equ 0F7Eh ;# 
# 11944 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
EECON1 equ 0F7Fh ;# 
# 11967 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PORTA equ 0F80h ;# 
# 12004 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PORTB equ 0F81h ;# 
# 12030 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PORTC equ 0F82h ;# 
# 12064 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PORTD equ 0F83h ;# 
# 12090 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PORTE equ 0F84h ;# 
# 12190 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR4 equ 0F87h ;# 
# 12202 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T4CON equ 0F88h ;# 
# 12225 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
LATA equ 0F89h ;# 
# 12278 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
LATB equ 0F8Ah ;# 
# 12331 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
LATC equ 0F8Bh ;# 
# 12384 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
LATD equ 0F8Ch ;# 
# 12437 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
LATE equ 0F8Dh ;# 
# 12485 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SLRCON equ 0F90h ;# 
# 12501 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ODCON equ 0F91h ;# 
# 12520 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TRISA equ 0F92h ;# 
# 12542 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TRISB equ 0F93h ;# 
# 12564 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TRISC equ 0F94h ;# 
# 12586 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TRISD equ 0F95h ;# 
# 12608 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TRISE equ 0F96h ;# 
# 12625 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPTMRS equ 0F99h ;# 
# 12641 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
REFOCON equ 0F9Ah ;# 
# 12663 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
OSCTUNE equ 0F9Bh ;# 
# 12685 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PSTR1CON equ 0F9Ch ;# 
# 12708 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIE1 equ 0F9Dh ;# 
# 12732 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIR1 equ 0F9Eh ;# 
# 12756 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
IPR1 equ 0F9Fh ;# 
# 12780 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIE2 equ 0FA0h ;# 
# 12801 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIR2 equ 0FA1h ;# 
# 12822 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
IPR2 equ 0FA2h ;# 
# 12843 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIE3 equ 0FA3h ;# 
# 12884 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIR3 equ 0FA4h ;# 
# 12909 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
IPR3 equ 0FA5h ;# 
# 12934 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCSTA2 equ 0FA6h ;# 
# 12974 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BAUDCON1 equ 0FA7h ;# 
# 13048 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
HLVDCON equ 0FA8h ;# 
# 13070 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PR4 equ 0FA9h ;# 
# 13082 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T1GCON equ 0FAAh ;# 
# 13118 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCSTA1 equ 0FABh ;# 
# 13123 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCSTA equ 0FABh ;# 
# 13221 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXSTA1 equ 0FACh ;# 
# 13226 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXSTA equ 0FACh ;# 
# 13304 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXREG1 equ 0FADh ;# 
# 13309 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXREG equ 0FADh ;# 
# 13327 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCREG1 equ 0FAEh ;# 
# 13332 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCREG equ 0FAEh ;# 
# 13350 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SPBRG1 equ 0FAFh ;# 
# 13355 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SPBRG equ 0FAFh ;# 
# 13373 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T3GCON equ 0FB0h ;# 
# 13409 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T3CON equ 0FB1h ;# 
# 13449 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR3 equ 0FB2h ;# 
# 13461 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR3L equ 0FB2h ;# 
# 13473 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR3H equ 0FB3h ;# 
# 13485 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CMSTAT equ 0FB4h ;# 
# 13490 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CMSTATUS equ 0FB4h ;# 
# 13528 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CVRCON equ 0FB5h ;# 
# 13558 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIE4 equ 0FB6h ;# 
# 13577 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PIR4 equ 0FB7h ;# 
# 13596 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
IPR4 equ 0FB8h ;# 
# 13618 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BAUDCON2 equ 0FB9h ;# 
# 13680 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TXSTA2 equ 0FBAh ;# 
# 13716 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCP1CON equ 0FBBh ;# 
# 13721 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ECCP1CON equ 0FBBh ;# 
# 13773 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR1 equ 0FBCh ;# 
# 13779 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR1L equ 0FBCh ;# 
# 13791 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
CCPR1H equ 0FBDh ;# 
# 13803 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ECCP1DEL equ 0FBEh ;# 
# 13808 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PWM1CON equ 0FBEh ;# 
# 13846 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ECCP1AS equ 0FBFh ;# 
# 13870 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ADCON2 equ 0FC0h ;# 
# 13893 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ADCON1 equ 0FC1h ;# 
# 13930 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ADCON0 equ 0FC2h ;# 
# 13977 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ADRES equ 0FC3h ;# 
# 13989 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ADRESL equ 0FC3h ;# 
# 14001 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
ADRESH equ 0FC4h ;# 
# 14013 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SSPCON2 equ 0FC5h ;# 
# 14040 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SSPCON1 equ 0FC6h ;# 
# 14062 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SSPSTAT equ 0FC7h ;# 
# 14158 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SSPADD equ 0FC8h ;# 
# 14180 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
SSPBUF equ 0FC9h ;# 
# 14192 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T2CON equ 0FCAh ;# 
# 14215 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PR2 equ 0FCBh ;# 
# 14220 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
MEMCON equ 0FCBh ;# 
# 14238 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR2 equ 0FCCh ;# 
# 14250 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T1CON equ 0FCDh ;# 
# 14286 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR1 equ 0FCEh ;# 
# 14298 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR1L equ 0FCEh ;# 
# 14310 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR1H equ 0FCFh ;# 
# 14322 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
RCON equ 0FD0h ;# 
# 14372 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
WDTCON equ 0FD1h ;# 
# 14394 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
OSCCON2 equ 0FD2h ;# 
# 14418 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
OSCCON equ 0FD3h ;# 
# 14442 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
T0CON equ 0FD5h ;# 
# 14464 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR0 equ 0FD6h ;# 
# 14476 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR0L equ 0FD6h ;# 
# 14488 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TMR0H equ 0FD7h ;# 
# 14500 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
STATUS equ 0FD8h ;# 
# 14531 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR2 equ 0FD9h ;# 
# 14543 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR2L equ 0FD9h ;# 
# 14555 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR2H equ 0FDAh ;# 
# 14567 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PLUSW2 equ 0FDBh ;# 
# 14579 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PREINC2 equ 0FDCh ;# 
# 14591 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
POSTDEC2 equ 0FDDh ;# 
# 14603 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
POSTINC2 equ 0FDEh ;# 
# 14615 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INDF2 equ 0FDFh ;# 
# 14627 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
BSR equ 0FE0h ;# 
# 14639 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR1 equ 0FE1h ;# 
# 14651 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR1L equ 0FE1h ;# 
# 14663 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR1H equ 0FE2h ;# 
# 14675 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PLUSW1 equ 0FE3h ;# 
# 14687 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PREINC1 equ 0FE4h ;# 
# 14699 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
POSTDEC1 equ 0FE5h ;# 
# 14711 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
POSTINC1 equ 0FE6h ;# 
# 14723 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INDF1 equ 0FE7h ;# 
# 14735 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
WREG equ 0FE8h ;# 
# 14747 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR0 equ 0FE9h ;# 
# 14759 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR0L equ 0FE9h ;# 
# 14771 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
FSR0H equ 0FEAh ;# 
# 14783 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PLUSW0 equ 0FEBh ;# 
# 14795 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PREINC0 equ 0FECh ;# 
# 14807 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
POSTDEC0 equ 0FEDh ;# 
# 14819 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
POSTINC0 equ 0FEEh ;# 
# 14831 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INDF0 equ 0FEFh ;# 
# 14843 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INTCON3 equ 0FF0h ;# 
# 14872 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INTCON2 equ 0FF1h ;# 
# 14902 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INTCON equ 0FF2h ;# 
# 14907 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
INTCON1 equ 0FF2h ;# 
# 14999 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PROD equ 0FF3h ;# 
# 15011 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PRODL equ 0FF3h ;# 
# 15023 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PRODH equ 0FF4h ;# 
# 15035 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TABLAT equ 0FF5h ;# 
# 15047 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TBLPTR equ 0FF6h ;# 
# 15059 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TBLPTRL equ 0FF6h ;# 
# 15071 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TBLPTRH equ 0FF7h ;# 
# 15083 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TBLPTRU equ 0FF8h ;# 
# 15095 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PCLAT equ 0FF9h ;# 
# 15100 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PC equ 0FF9h ;# 
# 15118 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PCL equ 0FF9h ;# 
# 15130 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PCLATH equ 0FFAh ;# 
# 15142 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
PCLATU equ 0FFBh ;# 
# 15154 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
STKPTR equ 0FFCh ;# 
# 15178 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TOS equ 0FFDh ;# 
# 15190 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TOSL equ 0FFDh ;# 
# 15202 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TOSH equ 0FFEh ;# 
# 15214 "d:\HI-TECH Software\PICC-18\9.80\include\PIC18F45K80.h"
TOSU equ 0FFFh ;# 
	FNCALL	_main,_delayms
	FNCALL	_main,_PORTInit
	FNCALL	_main,_IntManager
	FNCALL	_main,_SetConfig
	FNCALL	_main,_GetSampPluse
	FNCALL	_main,_DetInit
	FNCALL	_main,_StartDet
	FNCALL	_main,_StartCalc
	FNCALL	_main,_DTOperation
	FNCALL	_main,_Ch_Timeout_Processing
	FNCALL	_main,_DetBufWrite
	FNCALL	_main,_GetTimeAverage
	FNCALL	_Ch_Timeout_Processing,_DetBufWrite
	FNCALL	_Ch_Timeout_Processing,_GetTimeAverage
	FNCALL	_SetConfig,_EEPROMRead
	FNCALL	_SetConfig,_SetFreq
	FNCALL	_DetInit,_delayus
	FNCALL	_DetInit,_GetTimerCounter
	FNCALL	_DetInit,_GetTimeAverage
	FNCALL	_StartDet,_delayus
	FNCALL	_StartDet,_GetTimerCounter
	FNCALL	_DTOperation,_DTRecv
	FNCALL	_DTOperation,_TransportDataProcess
	FNCALL	_DTOperation,_DTSend
	FNCALL	_TransportDataProcess,_GetCoilState
	FNCALL	_TransportDataProcess,_ReadSensLv
	FNCALL	_TransportDataProcess,_ReadFrequency
	FNCALL	_TransportDataProcess,_ReadSensTable
	FNCALL	_TransportDataProcess,_DTWriteSensLv
	FNCALL	_TransportDataProcess,_DTWriteOSCSet
	FNCALL	_TransportDataProcess,_DTWriteSens
	FNCALL	_TransportDataProcess,_DTRest
	FNCALL	_TransportDataProcess,_DTSend
	FNCALL	_TransportDataProcess,_delayms
	FNCALL	_delayms,_delayus
	FNCALL	_ReadFrequency,_EEPROMRead
	FNCALL	_DTWriteSensLv,_EEPROMWrite
	FNCALL	_DTWriteSensLv,_ReadSensLv
	FNCALL	_DTWriteSensLv,_SetSens
	FNCALL	_ReadSensLv,_EEPROMRead
	FNCALL	_DTWriteSens,_EEPROMWrite
	FNCALL	_DTWriteSens,_ReadSensTable
	FNCALL	_DTWriteSens,_SetSens
	FNCALL	_ReadSensTable,_EEPROMRead
	FNCALL	_DTWriteOSCSet,_EEPROMWrite
	FNCALL	_DTWriteOSCSet,_SetFreq
	FNCALL	_SetFreq,_Set595Output
	FNCALL	_GetCoilState,_GetSampPluse
	FNCALL	_GetSampPluse,_delayus
	FNCALL	_GetSampPluse,_GetChSampPluse
	FNCALL	_GetChSampPluse,_PulseErrSet
	FNROOT	_main
	FNCALL	_IntServer,_DataTransferIntServer
	FNCALL	_IntServer,_TMR0IntServer
	FNCALL	_IntServer,_TMR1IntServer
	FNCALL	_IntServer,_TMR3IntServer
	FNCALL	intlevel2,_IntServer
	global	intlevel2
	FNROOT	intlevel2
	global	_det_current_sens
	global	_DT_SDdata_counter
	global	_DT_command
	global	_det_enable
	global	_eeprom_addr
	global	_eeprom_num
psect	idataCOMRAM,class=CODE,space=0,delta=1
global __pidataCOMRAM
__pidataCOMRAM:
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	149

;initializer for _det_current_sens
	db	low(0Ah)
	db	low(0Ah)
	db	low(0Ah)
	db	low(0Ah)
	db	low(0Ah)
	db	low(0Ah)
	db	low(0Ah)
	db	low(0Ah)
	line	116

;initializer for _DT_SDdata_counter
	db	low(0FFh)
	line	49

;initializer for _DT_command
	db	low(0FFh)
	line	152

;initializer for _det_enable
	db	low(0FFh)
	line	119

;initializer for _eeprom_addr
	dw	(05h)&0ffffh
	line	120

;initializer for _eeprom_num
	db	low(04h)
	global	_det_timer_average
	global	_DT_sync_buf
	global	_det_status
	global	_det_result
	global	DataTransferIntServer@buf_p
	global	_DT_data_counter
	global	_det_fillbuf_enable
	global	_det_result_output
	global	_det_start
	global	_det_current_sens_lv
	global	_det_osc_cfg
	global	_DTSync
	global	_det_output_enable
	global	_time0_int
	global	_time3_int
	global	_ch_timeout_timer
	global	_det_pluse_counter
	global	_det_timer_base
	global	_det_timer_conter
	global	_det_buf_p
	global	_det_pluse_counter_h
	global	_det_pluse_counter_l
	global	_DT_data
	global	_DT_data1
	global	_det_current_sens_table
	global	_det_timer_counter_buf
	global	_ADRESH
_ADRESH	set	0xFC4
	global	_ADRESL
_ADRESL	set	0xFC3
	global	_ANCON0
_ANCON0	set	0xF5D
	global	_ANCON1
_ANCON1	set	0xF5C
	global	_BRGCON1
_BRGCON1	set	0xE43
	global	_BRGCON2
_BRGCON2	set	0xE44
	global	_BRGCON3
_BRGCON3	set	0xE45
	global	_CANCON
_CANCON	set	0xF6F
	global	_CANSTAT
_CANSTAT	set	0xF6E
	global	_CIOCON
_CIOCON	set	0xF70
	global	_ECANCON
_ECANCON	set	0xF72
	global	_EEADR
_EEADR	set	0xF74
	global	_EEADRH
_EEADRH	set	0xF75
	global	_EECON1
_EECON1	set	0xF7F
	global	_EECON2
_EECON2	set	0xF7E
	global	_EEDATA
_EEDATA	set	0xF73
	global	_INTCON
_INTCON	set	0xFF2
	global	_PORTB
_PORTB	set	0xF81
	global	_PORTD
_PORTD	set	0xF83
	global	_RXB0CON
_RXB0CON	set	0xF60
	global	_RXB0D0
_RXB0D0	set	0xF66
	global	_RXB0D1
_RXB0D1	set	0xF67
	global	_RXB0D2
_RXB0D2	set	0xF68
	global	_RXB0D3
_RXB0D3	set	0xF69
	global	_RXB0D4
_RXB0D4	set	0xF6A
	global	_RXB0D5
_RXB0D5	set	0xF6B
	global	_RXB0D6
_RXB0D6	set	0xF6C
	global	_RXB0D7
_RXB0D7	set	0xF6D
	global	_RXB0DLC
_RXB0DLC	set	0xF65
	global	_RXB0EIDH
_RXB0EIDH	set	0xF63
	global	_RXB0EIDL
_RXB0EIDL	set	0xF64
	global	_RXB0SIDH
_RXB0SIDH	set	0xF61
	global	_RXB0SIDL
_RXB0SIDL	set	0xF62
	global	_RXB1CON
_RXB1CON	set	0xF30
	global	_RXB1D0
_RXB1D0	set	0xF36
	global	_RXB1D1
_RXB1D1	set	0xF37
	global	_RXB1D2
_RXB1D2	set	0xF38
	global	_RXB1D3
_RXB1D3	set	0xF39
	global	_RXB1D4
_RXB1D4	set	0xF3A
	global	_RXB1D5
_RXB1D5	set	0xF3B
	global	_RXB1D6
_RXB1D6	set	0xF3C
	global	_RXB1D7
_RXB1D7	set	0xF3D
	global	_RXB1DLC
_RXB1DLC	set	0xF35
	global	_RXB1EIDH
_RXB1EIDH	set	0xF33
	global	_RXB1EIDL
_RXB1EIDL	set	0xF34
	global	_RXB1SIDH
_RXB1SIDH	set	0xF31
	global	_RXB1SIDL
_RXB1SIDL	set	0xF32
	global	_RXF0EIDH
_RXF0EIDH	set	0xEE2
	global	_RXF0EIDL
_RXF0EIDL	set	0xEE3
	global	_RXF0SIDH
_RXF0SIDH	set	0xEE0
	global	_RXF0SIDL
_RXF0SIDL	set	0xEE1
	global	_RXF1EIDH
_RXF1EIDH	set	0xEE6
	global	_RXF1EIDL
_RXF1EIDL	set	0xEE7
	global	_RXF1SIDH
_RXF1SIDH	set	0xEE4
	global	_RXF1SIDL
_RXF1SIDL	set	0xEE5
	global	_RXF2EIDH
_RXF2EIDH	set	0xEEA
	global	_RXF2EIDL
_RXF2EIDL	set	0xEEB
	global	_RXF2SIDH
_RXF2SIDH	set	0xEE8
	global	_RXF2SIDL
_RXF2SIDL	set	0xEE9
	global	_RXF3EIDH
_RXF3EIDH	set	0xEEE
	global	_RXF3EIDL
_RXF3EIDL	set	0xEEF
	global	_RXF3SIDH
_RXF3SIDH	set	0xEEC
	global	_RXF3SIDL
_RXF3SIDL	set	0xEED
	global	_RXF4EIDH
_RXF4EIDH	set	0xEF2
	global	_RXF4EIDL
_RXF4EIDL	set	0xEF3
	global	_RXF4SIDH
_RXF4SIDH	set	0xEF0
	global	_RXF4SIDL
_RXF4SIDL	set	0xEF1
	global	_RXF5EIDH
_RXF5EIDH	set	0xEF6
	global	_RXF5EIDL
_RXF5EIDL	set	0xEF7
	global	_RXF5SIDH
_RXF5SIDH	set	0xEF4
	global	_RXF5SIDL
_RXF5SIDL	set	0xEF5
	global	_RXM0EIDH
_RXM0EIDH	set	0xEFA
	global	_RXM0EIDL
_RXM0EIDL	set	0xEFB
	global	_RXM0SIDH
_RXM0SIDH	set	0xEF8
	global	_RXM0SIDL
_RXM0SIDL	set	0xEF9
	global	_RXM1EIDH
_RXM1EIDH	set	0xEFE
	global	_RXM1EIDL
_RXM1EIDL	set	0xEFF
	global	_RXM1SIDH
_RXM1SIDH	set	0xEFC
	global	_RXM1SIDL
_RXM1SIDL	set	0xEFD
	global	_SSPBUF
_SSPBUF	set	0xFC9
	global	_T3CON
_T3CON	set	0xFB1
	global	_TMR0H
_TMR0H	set	0xFD7
	global	_TMR0L
_TMR0L	set	0xFD6
	global	_TMR1H
_TMR1H	set	0xFCF
	global	_TMR1L
_TMR1L	set	0xFCE
	global	_TMR3H
_TMR3H	set	0xFB3
	global	_TMR3L
_TMR3L	set	0xFB2
	global	_TRISA
_TRISA	set	0xF92
	global	_TRISB
_TRISB	set	0xF93
	global	_TRISC
_TRISC	set	0xF94
	global	_TRISD
_TRISD	set	0xF95
	global	_TRISE
_TRISE	set	0xF96
	global	_TXB0CON
_TXB0CON	set	0xF20
	global	_TXB0D0
_TXB0D0	set	0xF26
	global	_TXB0D1
_TXB0D1	set	0xF27
	global	_TXB0D2
_TXB0D2	set	0xF28
	global	_TXB0D3
_TXB0D3	set	0xF29
	global	_TXB0D4
_TXB0D4	set	0xF2A
	global	_TXB0D5
_TXB0D5	set	0xF2B
	global	_TXB0D6
_TXB0D6	set	0xF2C
	global	_TXB0D7
_TXB0D7	set	0xF2D
	global	_TXB0DLC
_TXB0DLC	set	0xF25
	global	_TXB0EIDH
_TXB0EIDH	set	0xF23
	global	_TXB0EIDL
_TXB0EIDL	set	0xF24
	global	_TXB0SIDH
_TXB0SIDH	set	0xF21
	global	_TXB0SIDL
_TXB0SIDL	set	0xF22
	global	_TXB1CON
_TXB1CON	set	0xF10
	global	_TXB1D0
_TXB1D0	set	0xF16
	global	_TXB1D1
_TXB1D1	set	0xF17
	global	_TXB1D2
_TXB1D2	set	0xF18
	global	_TXB1D3
_TXB1D3	set	0xF19
	global	_TXB1D4
_TXB1D4	set	0xF1A
	global	_TXB1D5
_TXB1D5	set	0xF1B
	global	_TXB1D6
_TXB1D6	set	0xF1C
	global	_TXB1D7
_TXB1D7	set	0xF1D
	global	_TXB1DLC
_TXB1DLC	set	0xF15
	global	_TXB1EIDH
_TXB1EIDH	set	0xF13
	global	_TXB1EIDL
_TXB1EIDL	set	0xF14
	global	_TXB1SIDH
_TXB1SIDH	set	0xF11
	global	_TXB1SIDL
_TXB1SIDL	set	0xF12
	global	_TXB2CON
_TXB2CON	set	0xF00
	global	_TXB2D0
_TXB2D0	set	0xF06
	global	_TXB2D1
_TXB2D1	set	0xF07
	global	_TXB2D2
_TXB2D2	set	0xF08
	global	_TXB2D3
_TXB2D3	set	0xF09
	global	_TXB2D4
_TXB2D4	set	0xF0A
	global	_TXB2D5
_TXB2D5	set	0xF0B
	global	_TXB2D6
_TXB2D6	set	0xF0C
	global	_TXB2D7
_TXB2D7	set	0xF0D
	global	_TXB2DLC
_TXB2DLC	set	0xF05
	global	_TXB2EIDH
_TXB2EIDH	set	0xF03
	global	_TXB2EIDL
_TXB2EIDL	set	0xF04
	global	_TXB2SIDH
_TXB2SIDH	set	0xF01
	global	_TXB2SIDL
_TXB2SIDL	set	0xF02
	global	_BF
_BF	set	0x7E38
	global	_ERRIF
_ERRIF	set	0x7BBD
	global	_RA1
_RA1	set	0x7C01
	global	_RA2
_RA2	set	0x7C02
	global	_RA3
_RA3	set	0x7C03
	global	_RA5
_RA5	set	0x7C05
	global	_RB2
_RB2	set	0x7C0A
	global	_RB3
_RB3	set	0x7C0B
	global	_RB4
_RB4	set	0x7C0C
	global	_RBIE
_RBIE	set	0x7F93
	global	_RC0
_RC0	set	0x7C10
	global	_RC1
_RC1	set	0x7C11
	global	_RC2
_RC2	set	0x7C12
	global	_RC3
_RC3	set	0x7C13
	global	_RC4
_RC4	set	0x7C14
	global	_RC5
_RC5	set	0x7C15
	global	_RC6
_RC6	set	0x7C16
	global	_RC7
_RC7	set	0x7C17
	global	_RXB0IF
_RXB0IF	set	0x7BB8
	global	_RXB1IF
_RXB1IF	set	0x7BB9
	global	_SSPIE
_SSPIE	set	0x7CEB
	global	_SSPIF
_SSPIF	set	0x7CF3
	global	_SSPOV
_SSPOV	set	0x7E36
	global	_SWDTEN
_SWDTEN	set	0x7E88
	global	_T08BIT
_T08BIT	set	0x7EAE
	global	_T0CS
_T0CS	set	0x7EAD
	global	_TMR0IE
_TMR0IE	set	0x7F95
	global	_TMR0IF
_TMR0IF	set	0x7F92
	global	_TMR0ON
_TMR0ON	set	0x7EAF
	global	_TMR1IE
_TMR1IE	set	0x7CE8
	global	_TMR1IF
_TMR1IF	set	0x7CF0
	global	_TMR3IE
_TMR3IE	set	0x7D01
	global	_TMR3IF
_TMR3IF	set	0x7D09
	global	_TMR3ON
_TMR3ON	set	0x7D88
	global	_TXB0IF
_TXB0IF	set	0x7BBA
	global	_TXB1IF
_TXB1IF	set	0x7BBB
	global	_TXB2IF
_TXB2IF	set	0x7BBC
	global	_WCOL
_WCOL	set	0x7E37
; #config settings
global __CFG_SOSCSEL$DIG
__CFG_SOSCSEL$DIG equ 0x0
global __CFG_XINST$OFF
__CFG_XINST$OFF equ 0x0
global __CFG_FOSC$HS1
__CFG_FOSC$HS1 equ 0x0
global __CFG_PLLCFG$OFF
__CFG_PLLCFG$OFF equ 0x0
global __CFG_WDTPS$256
__CFG_WDTPS$256 equ 0x0
global __CFG_WDTEN$ON
__CFG_WDTEN$ON equ 0x0
global __CFG_WRTD$OFF
__CFG_WRTD$OFF equ 0x0
	file	"CoilDet.as"
	line	#
psect	cinit,class=CODE,delta=1,reloc=2
global __pcinit
__pcinit:
global start_initialization
start_initialization:

psect	bitbssCOMRAM,class=COMRAM,bit,space=1
global __pbitbssCOMRAM
__pbitbssCOMRAM:
	global	_DTSync
_DTSync:
       ds      1
	global	_det_output_enable
_det_output_enable:
       ds      1
	global	_time0_int
_time0_int:
       ds      1
	global	_time3_int
_time3_int:
       ds      1
psect	bssCOMRAM,class=COMRAM,space=1
global __pbssCOMRAM
__pbssCOMRAM:
	global	_det_timer_average
_det_timer_average:
       ds      16
	global	_DT_sync_buf
_DT_sync_buf:
       ds      5
	global	_det_status
_det_status:
       ds      4
	global	_det_result
_det_result:
       ds      3
DataTransferIntServer@buf_p:
       ds      1
	global	_DT_data_counter
_DT_data_counter:
       ds      1
	global	_det_fillbuf_enable
_det_fillbuf_enable:
       ds      1
	global	_det_result_output
_det_result_output:
       ds      1
	global	_det_start
_det_start:
       ds      1
	global	_det_current_sens_lv
_det_current_sens_lv:
       ds      4
	global	_det_osc_cfg
_det_osc_cfg:
       ds      2
psect	dataCOMRAM,class=COMRAM,space=1
global __pdataCOMRAM
__pdataCOMRAM:
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	149
	global	_det_current_sens
_det_current_sens:
       ds      8
psect	dataCOMRAM
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	116
	global	_DT_SDdata_counter
_DT_SDdata_counter:
       ds      1
psect	dataCOMRAM
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	49
	global	_DT_command
_DT_command:
       ds      1
psect	dataCOMRAM
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	152
	global	_det_enable
_det_enable:
       ds      1
psect	dataCOMRAM
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	119
	global	_eeprom_addr
_eeprom_addr:
       ds      2
psect	dataCOMRAM
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	120
	global	_eeprom_num
_eeprom_num:
       ds      1
psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
	global	_ch_timeout_timer
_ch_timeout_timer:
       ds      16
	global	_det_pluse_counter
_det_pluse_counter:
       ds      16
	global	_det_timer_base
_det_timer_base:
       ds      16
	global	_det_timer_conter
_det_timer_conter:
       ds      16
	global	_det_buf_p
_det_buf_p:
       ds      8
	global	_det_pluse_counter_h
_det_pluse_counter_h:
       ds      8
	global	_det_pluse_counter_l
_det_pluse_counter_l:
       ds      8
	global	_DT_data
_DT_data:
       ds      18
	global	_DT_data1
_DT_data1:
       ds      18
	global	_det_current_sens_table
_det_current_sens_table:
       ds      16
psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
	global	_det_timer_counter_buf
_det_timer_counter_buf:
       ds      160
psect	cinit
; Clear objects allocated to BANK1 (160 bytes)
	global __pbssBANK1
lfsr	0,__pbssBANK1
movlw	160
clear_0:
clrf	postinc0,c
decf	wreg
bnz	clear_0
; Clear objects allocated to BANK0 (140 bytes)
	global __pbssBANK0
lfsr	0,__pbssBANK0
movlw	140
clear_1:
clrf	postinc0,c
decf	wreg
bnz	clear_1
; Clear objects allocated to BITCOMRAM (1 bytes)
	global __pbitbssCOMRAM
clrf	(__pbitbssCOMRAM/8+0)&0xffh,c
; Clear objects allocated to COMRAM (39 bytes)
	global __pbssCOMRAM
lfsr	0,__pbssCOMRAM
movlw	39
clear_2:
clrf	postinc0,c
decf	wreg
bnz	clear_2
; Initialize objects allocated to COMRAM (14 bytes)
	global __pidataCOMRAM
	; load TBLPTR registers with __pidataCOMRAM
	movlw	low (__pidataCOMRAM)
	movwf	tblptrl
	movlw	high(__pidataCOMRAM)
	movwf	tblptrh
	movlw	low highword(__pidataCOMRAM)
	movwf	tblptru
	lfsr	0,__pdataCOMRAM
	lfsr	1,14
	copy_data0:
	tblrd	*+
	movff	tablat, postinc0
	movf	postdec1,w
	movf	fsr1l,w
	bnz	copy_data0
psect cinit,class=CODE,delta=1
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
goto _main	;jump to C main() function
psect	cstackCOMRAM,class=COMRAM,space=1
global __pcstackCOMRAM
__pcstackCOMRAM:
	global	?_DetBufWrite
?_DetBufWrite:	; 0 bytes @ 0x0
	global	?_EEPROMRead
?_EEPROMRead:	; 0 bytes @ 0x0
	global	?_EEPROMWrite
?_EEPROMWrite:	; 0 bytes @ 0x0
	global	?_delayus
?_delayus:	; 0 bytes @ 0x0
	global	?_Ch_Timeout_Processing
?_Ch_Timeout_Processing:	; 0 bytes @ 0x0
	global	?_TMR0IntServer
?_TMR0IntServer:	; 0 bytes @ 0x0
	global	??_TMR0IntServer
??_TMR0IntServer:	; 0 bytes @ 0x0
	global	?_TMR1IntServer
?_TMR1IntServer:	; 0 bytes @ 0x0
	global	??_TMR1IntServer
??_TMR1IntServer:	; 0 bytes @ 0x0
	global	?_TMR3IntServer
?_TMR3IntServer:	; 0 bytes @ 0x0
	global	??_TMR3IntServer
??_TMR3IntServer:	; 0 bytes @ 0x0
	global	?_DataTransferIntServer
?_DataTransferIntServer:	; 0 bytes @ 0x0
	global	??_DataTransferIntServer
??_DataTransferIntServer:	; 0 bytes @ 0x0
	global	?_IntServer
?_IntServer:	; 0 bytes @ 0x0
	global	??_IntServer
??_IntServer:	; 0 bytes @ 0x0
	global	?_PORTInit
?_PORTInit:	; 0 bytes @ 0x0
	global	??_PORTInit
??_PORTInit:	; 0 bytes @ 0x0
	global	?_IntManager
?_IntManager:	; 0 bytes @ 0x0
	global	??_IntManager
??_IntManager:	; 0 bytes @ 0x0
	global	?_Set595Output
?_Set595Output:	; 0 bytes @ 0x0
	global	?_SetFreq
?_SetFreq:	; 0 bytes @ 0x0
	global	?_SetSens
?_SetSens:	; 0 bytes @ 0x0
	global	?_SetConfig
?_SetConfig:	; 0 bytes @ 0x0
	global	?_PulseErrSet
?_PulseErrSet:	; 0 bytes @ 0x0
	global	??_PulseErrSet
??_PulseErrSet:	; 0 bytes @ 0x0
	global	?_GetChSampPluse
?_GetChSampPluse:	; 0 bytes @ 0x0
	global	?_GetSampPluse
?_GetSampPluse:	; 0 bytes @ 0x0
	global	?_DetInit
?_DetInit:	; 0 bytes @ 0x0
	global	?_StartDet
?_StartDet:	; 0 bytes @ 0x0
	global	?_DTSend
?_DTSend:	; 0 bytes @ 0x0
	global	?_DTRecv
?_DTRecv:	; 0 bytes @ 0x0
	global	?_StartCalc
?_StartCalc:	; 0 bytes @ 0x0
	global	??_StartCalc
??_StartCalc:	; 0 bytes @ 0x0
	global	?_ReadFrequency
?_ReadFrequency:	; 0 bytes @ 0x0
	global	?_ReadSensTable
?_ReadSensTable:	; 0 bytes @ 0x0
	global	?_DTWriteSensLv
?_DTWriteSensLv:	; 0 bytes @ 0x0
	global	?_DTWriteSens
?_DTWriteSens:	; 0 bytes @ 0x0
	global	?_DTWriteOSCSet
?_DTWriteOSCSet:	; 0 bytes @ 0x0
	global	?_GetCoilState
?_GetCoilState:	; 0 bytes @ 0x0
	global	?_DTRest
?_DTRest:	; 0 bytes @ 0x0
	global	??_DTRest
??_DTRest:	; 0 bytes @ 0x0
	global	?_TransportDataProcess
?_TransportDataProcess:	; 0 bytes @ 0x0
	global	?_DTOperation
?_DTOperation:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_GetTimeAverage
?_GetTimeAverage:	; 2 bytes @ 0x0
	global	?_GetTimerCounter
?_GetTimerCounter:	; 2 bytes @ 0x0
	global	EEPROMRead@num
EEPROMRead@num:	; 1 bytes @ 0x0
	global	EEPROMWrite@num
EEPROMWrite@num:	; 1 bytes @ 0x0
	global	Set595Output@num
Set595Output@num:	; 1 bytes @ 0x0
	global	SetSens@level
SetSens@level:	; 1 bytes @ 0x0
	global	DTSend@dat
DTSend@dat:	; 1 bytes @ 0x0
	global	delayus@us
delayus@us:	; 2 bytes @ 0x0
	global	DetBufWrite@val
DetBufWrite@val:	; 2 bytes @ 0x0
	global	DTRecv@dat
DTRecv@dat:	; 2 bytes @ 0x0
	ds   1
	global	??_Set595Output
??_Set595Output:	; 0 bytes @ 0x1
	global	??_SetSens
??_SetSens:	; 0 bytes @ 0x1
	global	??_DTSend
??_DTSend:	; 0 bytes @ 0x1
	global	EEPROMWrite@dat
EEPROMWrite@dat:	; 1 bytes @ 0x1
	global	Set595Output@j
Set595Output@j:	; 1 bytes @ 0x1
	global	EEPROMRead@dat
EEPROMRead@dat:	; 2 bytes @ 0x1
	ds   1
	global	??_GetTimeAverage
??_GetTimeAverage:	; 0 bytes @ 0x2
	global	??_EEPROMWrite
??_EEPROMWrite:	; 0 bytes @ 0x2
	global	??_delayus
??_delayus:	; 0 bytes @ 0x2
	global	??_GetTimerCounter
??_GetTimerCounter:	; 0 bytes @ 0x2
	global	??_DTRecv
??_DTRecv:	; 0 bytes @ 0x2
	global	Set595Output@dat
Set595Output@dat:	; 1 bytes @ 0x2
	global	SetSens@table
SetSens@table:	; 1 bytes @ 0x2
	global	DetBufWrite@ch
DetBufWrite@ch:	; 1 bytes @ 0x2
	global	StartCalc@i
StartCalc@i:	; 1 bytes @ 0x2
	global	delayus@i
delayus@i:	; 2 bytes @ 0x2
	ds   1
	global	??_DetBufWrite
??_DetBufWrite:	; 0 bytes @ 0x3
	global	??_EEPROMRead
??_EEPROMRead:	; 0 bytes @ 0x3
	global	Set595Output@tempd
Set595Output@tempd:	; 1 bytes @ 0x3
	global	PulseErrSet@ch
PulseErrSet@ch:	; 1 bytes @ 0x3
	ds   1
	global	?_delayms
?_delayms:	; 0 bytes @ 0x4
	global	??_GetChSampPluse
??_GetChSampPluse:	; 0 bytes @ 0x4
	global	EEPROMWrite@addr
EEPROMWrite@addr:	; 1 bytes @ 0x4
	global	Set595Output@i
Set595Output@i:	; 1 bytes @ 0x4
	global	GetTimerCounter@temp_sta
GetTimerCounter@temp_sta:	; 1 bytes @ 0x4
	global	delayms@ms
delayms@ms:	; 2 bytes @ 0x4
	ds   1
	global	??_SetFreq
??_SetFreq:	; 0 bytes @ 0x5
	global	EEPROMRead@addr
EEPROMRead@addr:	; 1 bytes @ 0x5
	global	DTSend@d_size
DTSend@d_size:	; 1 bytes @ 0x5
	global	DTRecv@d_size
DTRecv@d_size:	; 1 bytes @ 0x5
	global	SetFreq@temp_data
SetFreq@temp_data:	; 2 bytes @ 0x5
	global	GetTimerCounter@time_val
GetTimerCounter@time_val:	; 2 bytes @ 0x5
	ds   1
	global	??_delayms
??_delayms:	; 0 bytes @ 0x6
	global	??_ReadFrequency
??_ReadFrequency:	; 0 bytes @ 0x6
	global	?_ReadSensLv
?_ReadSensLv:	; 0 bytes @ 0x6
	global	??_ReadSensTable
??_ReadSensTable:	; 0 bytes @ 0x6
	global	DTSend@i
DTSend@i:	; 1 bytes @ 0x6
	global	DTRecv@i
DTRecv@i:	; 1 bytes @ 0x6
	global	ReadFrequency@dat
ReadFrequency@dat:	; 1 bytes @ 0x6
	global	ReadSensTable@dat
ReadSensTable@dat:	; 1 bytes @ 0x6
	global	delayms@i
delayms@i:	; 2 bytes @ 0x6
	global	GetTimeAverage@tempData
GetTimeAverage@tempData:	; 2 bytes @ 0x6
	global	ReadSensLv@dat
ReadSensLv@dat:	; 2 bytes @ 0x6
	ds   1
	global	??_DTWriteSens
??_DTWriteSens:	; 0 bytes @ 0x7
	global	SetFreq@dat
SetFreq@dat:	; 1 bytes @ 0x7
	global	GetChSampPluse@ch
GetChSampPluse@ch:	; 1 bytes @ 0x7
	global	GetTimerCounter@ch
GetTimerCounter@ch:	; 1 bytes @ 0x7
	global	DTSend@j
DTSend@j:	; 1 bytes @ 0x7
	global	DTRecv@j
DTRecv@j:	; 1 bytes @ 0x7
	global	DTWriteSens@dat
DTWriteSens@dat:	; 1 bytes @ 0x7
	ds   1
	global	??_SetConfig
??_SetConfig:	; 0 bytes @ 0x8
	global	??_GetSampPluse
??_GetSampPluse:	; 0 bytes @ 0x8
	global	??_StartDet
??_StartDet:	; 0 bytes @ 0x8
	global	??_ReadSensLv
??_ReadSensLv:	; 0 bytes @ 0x8
	global	??_DTWriteSensLv
??_DTWriteSensLv:	; 0 bytes @ 0x8
	global	??_DTWriteOSCSet
??_DTWriteOSCSet:	; 0 bytes @ 0x8
	global	DTWriteSensLv@dat
DTWriteSensLv@dat:	; 1 bytes @ 0x8
	global	DTWriteOSCSet@dat
DTWriteOSCSet@dat:	; 1 bytes @ 0x8
	global	GetTimeAverage@tempData1
GetTimeAverage@tempData1:	; 2 bytes @ 0x8
	ds   1
	global	SetConfig@EEPromData
SetConfig@EEPromData:	; 22 bytes @ 0x9
	ds   1
	global	GetTimeAverage@tempSum
GetTimeAverage@tempSum:	; 4 bytes @ 0xA
	ds   1
	global	GetSampPluse@i
GetSampPluse@i:	; 1 bytes @ 0xB
	ds   1
	global	??_GetCoilState
??_GetCoilState:	; 0 bytes @ 0xC
	global	??_TransportDataProcess
??_TransportDataProcess:	; 0 bytes @ 0xC
	global	??_DTOperation
??_DTOperation:	; 0 bytes @ 0xC
	global	StartDet@temp_timer_counter
StartDet@temp_timer_counter:	; 2 bytes @ 0xC
	ds   2
	global	GetTimeAverage@j
GetTimeAverage@j:	; 1 bytes @ 0xE
	global	StartDet@i
StartDet@i:	; 1 bytes @ 0xE
	ds   1
	global	GetTimeAverage@k
GetTimeAverage@k:	; 1 bytes @ 0xF
	ds   1
	global	GetTimeAverage@ch
GetTimeAverage@ch:	; 1 bytes @ 0x10
	ds   1
	global	GetTimeAverage@i
GetTimeAverage@i:	; 1 bytes @ 0x11
	global	DTOperation@dt_dat
DTOperation@dt_dat:	; 7 bytes @ 0x11
	ds   1
	global	??_Ch_Timeout_Processing
??_Ch_Timeout_Processing:	; 0 bytes @ 0x12
	global	??_DetInit
??_DetInit:	; 0 bytes @ 0x12
	ds   2
	global	Ch_Timeout_Processing@j
Ch_Timeout_Processing@j:	; 1 bytes @ 0x14
	global	DetInit@j
DetInit@j:	; 1 bytes @ 0x14
	ds   1
	global	Ch_Timeout_Processing@i
Ch_Timeout_Processing@i:	; 1 bytes @ 0x15
	global	DetInit@i
DetInit@i:	; 1 bytes @ 0x15
	ds   3
	global	DTOperation@i
DTOperation@i:	; 1 bytes @ 0x18
	ds   7
	global	SetConfig@i
SetConfig@i:	; 1 bytes @ 0x1F
	ds   1
	global	??_main
??_main:	; 0 bytes @ 0x20
	ds   2
	global	main@a
main@a:	; 1 bytes @ 0x22
	ds   1
	global	main@k
main@k:	; 1 bytes @ 0x23
	ds   1
	global	main@t
main@t:	; 1 bytes @ 0x24
	ds   1
	global	main@j
main@j:	; 1 bytes @ 0x25
	ds   1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        14
;!    BSS         339
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMRAM           95     38      92
;!    BANK0           160      0     140
;!    BANK1           256      0     160
;!    BANK2           256      0       0
;!    BANK3           256      0       0
;!    BANK4           256      0       0
;!    BANK5           256      0       0
;!    BANK6           256      0       0
;!    BANK7           256      0       0
;!    BANK8           256      0       0
;!    BANK9           256      0       0
;!    BANK10          256      0       0
;!    BANK11          256      0       0
;!    BANK12          256      0       0
;!    BANK13          256      0       0
;!    BANK14           65      0       0

;!
;!Pointer List with Targets:
;!
;!    ?_GetTimerCounter	unsigned int  size(1) Largest target is 0
;!
;!    ?_GetTimeAverage	unsigned int  size(1) Largest target is 0
;!
;!    DTWriteOSCSet@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> DT_data(BANK0[18]), 
;!
;!    DTWriteSens@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> DT_data(BANK0[18]), 
;!
;!    DTWriteSensLv@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> DT_data(BANK0[18]), 
;!
;!    ReadSensTable@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> det_current_sens_table(BANK0[16]), DT_data1(BANK0[18]), 
;!
;!    ReadSensLv@dat	PTR unsigned char  size(2) Largest target is 18
;!		 -> det_current_sens_lv(COMRAM[4]), DT_data1(BANK0[18]), 
;!
;!    ReadFrequency@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> DT_data1(BANK0[18]), 
;!
;!    DTRecv@dat	PTR unsigned char  size(2) Largest target is 18
;!		 -> DTOperation@dt_dat(COMRAM[7]), DT_data(BANK0[18]), 
;!
;!    DTSend@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> DT_data1(BANK0[18]), 
;!
;!    SetSens@level	PTR unsigned char  size(1) Largest target is 4
;!		 -> det_current_sens_lv(COMRAM[4]), 
;!
;!    SetSens@table	PTR unsigned char  size(1) Largest target is 16
;!		 -> det_current_sens_table(BANK0[16]), 
;!
;!    SetFreq@dat	PTR unsigned char  size(1) Largest target is 2
;!		 -> det_osc_cfg(COMRAM[2]), 
;!
;!    Set595Output@dat	PTR unsigned char  size(1) Largest target is 2
;!		 -> SetFreq@temp_data(COMRAM[2]), 
;!
;!    EEPROMWrite@num	PTR unsigned char  size(1) Largest target is 1
;!		 -> eeprom_num(COMRAM[1]), 
;!
;!    EEPROMWrite@dat	PTR unsigned char  size(1) Largest target is 18
;!		 -> DT_data(BANK0[18]), 
;!
;!    EEPROMWrite@addr	PTR unsigned int  size(1) Largest target is 2
;!		 -> eeprom_addr(COMRAM[2]), 
;!
;!    EEPROMRead@num	PTR unsigned char  size(1) Largest target is 1
;!		 -> eeprom_num(COMRAM[1]), 
;!
;!    EEPROMRead@dat	PTR unsigned char  size(2) Largest target is 22
;!		 -> det_current_sens_table(BANK0[16]), det_current_sens_lv(COMRAM[4]), DT_data1(BANK0[18]), SetConfig@EEPromData(COMRAM[22]), 
;!
;!    EEPROMRead@addr	PTR unsigned int  size(1) Largest target is 2
;!		 -> eeprom_addr(COMRAM[2]), 
;!


;!
;!Critical Paths under _main in COMRAM
;!
;!    _main->_SetConfig
;!    _Ch_Timeout_Processing->_GetTimeAverage
;!    _SetConfig->_SetFreq
;!    _DetInit->_GetTimeAverage
;!    _StartDet->_GetTimerCounter
;!    _delayms->_delayus
;!    _ReadFrequency->_EEPROMRead
;!    _DTWriteSensLv->_ReadSensLv
;!    _ReadSensLv->_EEPROMRead
;!    _DTWriteSens->_ReadSensTable
;!    _ReadSensTable->_EEPROMRead
;!    _DTWriteOSCSet->_SetFreq
;!    _SetFreq->_Set595Output
;!    _GetCoilState->_GetSampPluse
;!    _GetSampPluse->_GetChSampPluse
;!    _GetChSampPluse->_PulseErrSet
;!
;!Critical Paths under _IntServer in COMRAM
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK2
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK4
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK4
;!
;!    None.
;!
;!Critical Paths under _main in BANK5
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK5
;!
;!    None.
;!
;!Critical Paths under _main in BANK6
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK6
;!
;!    None.
;!
;!Critical Paths under _main in BANK7
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK7
;!
;!    None.
;!
;!Critical Paths under _main in BANK8
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK8
;!
;!    None.
;!
;!Critical Paths under _main in BANK9
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK9
;!
;!    None.
;!
;!Critical Paths under _main in BANK10
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK10
;!
;!    None.
;!
;!Critical Paths under _main in BANK11
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK11
;!
;!    None.
;!
;!Critical Paths under _main in BANK12
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK12
;!
;!    None.
;!
;!Critical Paths under _main in BANK13
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK13
;!
;!    None.
;!
;!Critical Paths under _main in BANK14
;!
;!    None.
;!
;!Critical Paths under _IntServer in BANK14
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 6     6      0    9576
;!                                             32 COMRAM     6     6      0
;!                            _delayms
;!                           _PORTInit
;!                         _IntManager
;!                          _SetConfig
;!                       _GetSampPluse
;!                            _DetInit
;!                           _StartDet
;!                          _StartCalc
;!                        _DTOperation
;!              _Ch_Timeout_Processing
;!                        _DetBufWrite
;!                     _GetTimeAverage
;! ---------------------------------------------------------------------------------
;! (1) _Ch_Timeout_Processing                                4     4      0     990
;!                                             18 COMRAM     4     4      0
;!                        _DetBufWrite
;!                     _GetTimeAverage
;! ---------------------------------------------------------------------------------
;! (1) _DetBufWrite                                          5     2      3     132
;!                                              0 COMRAM     5     2      3
;! ---------------------------------------------------------------------------------
;! (1) _PORTInit                                             0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _IntManager                                           0     0      0       0
;! ---------------------------------------------------------------------------------
;! (1) _SetConfig                                           24    24      0     897
;!                                              8 COMRAM    24    24      0
;!                         _EEPROMRead
;!                            _SetFreq
;! ---------------------------------------------------------------------------------
;! (1) _DetInit                                              4     4      0    1063
;!                                             18 COMRAM     4     4      0
;!                            _delayus
;!                    _GetTimerCounter
;!                     _GetTimeAverage
;! ---------------------------------------------------------------------------------
;! (1) _GetTimeAverage                                      18    16      2     588
;!                                              0 COMRAM    18    16      2
;! ---------------------------------------------------------------------------------
;! (1) _StartDet                                             7     7      0     650
;!                                              8 COMRAM     7     7      0
;!                            _delayus
;!                    _GetTimerCounter
;! ---------------------------------------------------------------------------------
;! (2) _GetTimerCounter                                      8     6      2      92
;!                                              0 COMRAM     8     6      2
;! ---------------------------------------------------------------------------------
;! (1) _StartCalc                                            3     3      0     245
;!                                              0 COMRAM     3     3      0
;! ---------------------------------------------------------------------------------
;! (1) _DTOperation                                         13    13      0    3753
;!                                             12 COMRAM    13    13      0
;!                             _DTRecv
;!               _TransportDataProcess
;!                             _DTSend
;! ---------------------------------------------------------------------------------
;! (2) _DTRecv                                               8     6      2     183
;!                                              0 COMRAM     8     6      2
;! ---------------------------------------------------------------------------------
;! (2) _TransportDataProcess                                 0     0      0    3195
;!                       _GetCoilState
;!                         _ReadSensLv
;!                      _ReadFrequency
;!                      _ReadSensTable
;!                      _DTWriteSensLv
;!                      _DTWriteOSCSet
;!                        _DTWriteSens
;!                             _DTRest
;!                             _DTSend
;!                            _delayms
;! ---------------------------------------------------------------------------------
;! (3) _delayms                                              4     2      2      93
;!                                              4 COMRAM     4     2      2
;!                            _delayus
;! ---------------------------------------------------------------------------------
;! (2) _DTSend                                               8     7      1     139
;!                                              0 COMRAM     8     7      1
;! ---------------------------------------------------------------------------------
;! (3) _ReadFrequency                                        1     1      0     133
;!                                              6 COMRAM     1     1      0
;!                         _EEPROMRead
;! ---------------------------------------------------------------------------------
;! (3) _DTWriteSensLv                                        1     1      0     621
;!                                              8 COMRAM     1     1      0
;!                        _EEPROMWrite
;!                         _ReadSensLv
;!                            _SetSens
;! ---------------------------------------------------------------------------------
;! (4) _ReadSensLv                                           2     0      2     133
;!                                              6 COMRAM     2     0      2
;!                         _EEPROMRead
;! ---------------------------------------------------------------------------------
;! (3) _DTWriteSens                                          1     1      0     621
;!                                              7 COMRAM     1     1      0
;!                        _EEPROMWrite
;!                      _ReadSensTable
;!                            _SetSens
;! ---------------------------------------------------------------------------------
;! (4) _SetSens                                              3     2      1     355
;!                                              0 COMRAM     3     2      1
;! ---------------------------------------------------------------------------------
;! (4) _ReadSensTable                                        1     1      0     133
;!                                              6 COMRAM     1     1      0
;!                         _EEPROMRead
;! ---------------------------------------------------------------------------------
;! (5) _EEPROMRead                                           6     3      3     111
;!                                              0 COMRAM     6     3      3
;! ---------------------------------------------------------------------------------
;! (3) _DTWriteOSCSet                                        1     1      0     435
;!                                              8 COMRAM     1     1      0
;!                        _EEPROMWrite
;!                            _SetFreq
;! ---------------------------------------------------------------------------------
;! (4) _EEPROMWrite                                          5     3      2     111
;!                                              0 COMRAM     5     3      2
;! ---------------------------------------------------------------------------------
;! (4) _SetFreq                                              3     3      0     257
;!                                              5 COMRAM     3     3      0
;!                       _Set595Output
;! ---------------------------------------------------------------------------------
;! (5) _Set595Output                                         6     5      1     163
;!                                              0 COMRAM     5     4      1
;! ---------------------------------------------------------------------------------
;! (3) _GetCoilState                                         0     0      0     887
;!                       _GetSampPluse
;! ---------------------------------------------------------------------------------
;! (4) _GetSampPluse                                         4     4      0     887
;!                                              8 COMRAM     4     4      0
;!                            _delayus
;!                     _GetChSampPluse
;! ---------------------------------------------------------------------------------
;! (4) _delayus                                              4     2      2      47
;!                                              0 COMRAM     4     2      2
;! ---------------------------------------------------------------------------------
;! (5) _GetChSampPluse                                       4     4      0     595
;!                                              4 COMRAM     4     4      0
;!                        _PulseErrSet
;! ---------------------------------------------------------------------------------
;! (6) _PulseErrSet                                          4     4      0     440
;!                                              0 COMRAM     4     4      0
;! ---------------------------------------------------------------------------------
;! (3) _DTRest                                               0     0      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 6
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (7) _IntServer                                            0     0      0       0
;!              _DataTransferIntServer
;!                      _TMR0IntServer
;!                      _TMR1IntServer
;!                      _TMR3IntServer
;! ---------------------------------------------------------------------------------
;! (8) _TMR0IntServer                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _TMR1IntServer                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _TMR3IntServer                                        0     0      0       0
;! ---------------------------------------------------------------------------------
;! (8) _DataTransferIntServer                                1     1      0       0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 8
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delayms
;!     _delayus
;!   _PORTInit
;!   _IntManager
;!   _SetConfig
;!     _EEPROMRead
;!     _SetFreq
;!       _Set595Output
;!   _GetSampPluse
;!     _delayus
;!     _GetChSampPluse
;!       _PulseErrSet
;!   _DetInit
;!     _delayus
;!     _GetTimerCounter
;!     _GetTimeAverage
;!   _StartDet
;!     _delayus
;!     _GetTimerCounter
;!   _StartCalc
;!   _DTOperation
;!     _DTRecv
;!     _TransportDataProcess
;!       _GetCoilState
;!         _GetSampPluse
;!           _delayus
;!           _GetChSampPluse
;!             _PulseErrSet
;!       _ReadSensLv
;!         _EEPROMRead
;!       _ReadFrequency
;!         _EEPROMRead
;!       _ReadSensTable
;!         _EEPROMRead
;!       _DTWriteSensLv
;!         _EEPROMWrite
;!         _ReadSensLv
;!           _EEPROMRead
;!         _SetSens
;!       _DTWriteOSCSet
;!         _EEPROMWrite
;!         _SetFreq
;!           _Set595Output
;!       _DTWriteSens
;!         _EEPROMWrite
;!         _ReadSensTable
;!           _EEPROMRead
;!         _SetSens
;!       _DTRest
;!       _DTSend
;!       _delayms
;!         _delayus
;!     _DTSend
;!   _Ch_Timeout_Processing
;!     _DetBufWrite
;!     _GetTimeAverage
;!   _DetBufWrite
;!   _GetTimeAverage
;!
;! _IntServer (ROOT)
;!   _DataTransferIntServer
;!   _TMR0IntServer
;!   _TMR1IntServer
;!   _TMR3IntServer
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BIGRAM             E40      0       0      35        0.0%
;!EEDATA             400      0       0       0        0.0%
;!BITBANK13          100      0       0      31        0.0%
;!BANK13             100      0       0      32        0.0%
;!BITBANK12          100      0       0      29        0.0%
;!BANK12             100      0       0      30        0.0%
;!BITBANK11          100      0       0      27        0.0%
;!BANK11             100      0       0      28        0.0%
;!BITBANK10          100      0       0      25        0.0%
;!BANK10             100      0       0      26        0.0%
;!BITBANK9           100      0       0      23        0.0%
;!BANK9              100      0       0      24        0.0%
;!BITBANK8           100      0       0      21        0.0%
;!BANK8              100      0       0      22        0.0%
;!BITBANK7           100      0       0      19        0.0%
;!BANK7              100      0       0      20        0.0%
;!BITBANK6           100      0       0      17        0.0%
;!BANK6              100      0       0      18        0.0%
;!BITBANK5           100      0       0      15        0.0%
;!BANK5              100      0       0      16        0.0%
;!BITBANK4           100      0       0      13        0.0%
;!BANK4              100      0       0      14        0.0%
;!BITBANK3           100      0       0      11        0.0%
;!BANK3              100      0       0      12        0.0%
;!BITBANK2           100      0       0       9        0.0%
;!BANK2              100      0       0      10        0.0%
;!BITBANK1           100      0       0       7        0.0%
;!BANK1              100      0      A0       8       62.5%
;!BITBANK0            A0      0       0       4        0.0%
;!BANK0               A0      0      8C       5       87.5%
;!BITCOMRAM           5F      0       1       0        1.1%
;!COMRAM              5F     26      5C       1       96.8%
;!BITBANK14           41      0       0      33        0.0%
;!BANK14              41      0       0      34        0.0%
;!BITSFR_2             0      0       0      40        0.0%
;!SFR_2                0      0       0      40        0.0%
;!BITSFR_1             0      0       0      40        0.0%
;!SFR_1                0      0       0      40        0.0%
;!BITSFR               0      0       0      40        0.0%
;!SFR                  0      0       0      40        0.0%
;!STACK                0      0       A       2        0.0%
;!NULL                 0      0       0       0        0.0%
;!ABS                  0      0     188       6        0.0%
;!DATA                 0      0     192       3        0.0%
;!CODE                 0      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 1599 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               1   37[COMRAM] unsigned char 
;;  t               1   36[COMRAM] unsigned char 
;;  k               1   35[COMRAM] unsigned char 
;;  a               1   34[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    8
;; This function calls:
;;		_delayms
;;		_PORTInit
;;		_IntManager
;;		_SetConfig
;;		_GetSampPluse
;;		_DetInit
;;		_StartDet
;;		_StartCalc
;;		_DTOperation
;;		_Ch_Timeout_Processing
;;		_DetBufWrite
;;		_GetTimeAverage
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	text0,class=CODE,space=0,reloc=2
global __ptext0
__ptext0:
psect	text0
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1599
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:; BSR set to: 0

	opt	stack 23
	line	1600
	
l3007:
;CoilDet-V0.0.C: 1600: unsigned char a = 0x00;
	clrf	((c:main@a)),c
	line	1601
	clrf	((c:main@k)),c
	clrf	((c:main@t)),c
	line	1602
;CoilDet-V0.0.C: 1602: SWDTEN =0;
	bcf	c:(32392/8),(32392)&7	;volatile
	line	1603
	
l3009:
;CoilDet-V0.0.C: 1603: delayms(500);
	movlw	high(01F4h)
	movwf	((c:?_delayms+1)),c
	movlw	low(01F4h)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	1604
	
l3011:
;CoilDet-V0.0.C: 1604: PORTInit();
	call	_PORTInit	;wreg free
	line	1605
	
l3013:; BSR set to: 15

;CoilDet-V0.0.C: 1605: IntManager();
	call	_IntManager	;wreg free
	line	1607
	
l3015:; BSR set to: 15

;CoilDet-V0.0.C: 1607: SetConfig();
	call	_SetConfig	;wreg free
	line	1608
	
l3017:
;CoilDet-V0.0.C: 1608: GetSampPluse();
	call	_GetSampPluse	;wreg free
	line	1609
	
l3019:
;CoilDet-V0.0.C: 1609: DetInit();
	call	_DetInit	;wreg free
	line	1610
	
l3021:
;CoilDet-V0.0.C: 1610: SWDTEN =1;
	bsf	c:(32392/8),(32392)&7	;volatile
	line	1613
	
l3023:
;CoilDet-V0.0.C: 1612: {
;CoilDet-V0.0.C: 1613: StartDet();
	call	_StartDet	;wreg free
	line	1614
	
l3025:
;CoilDet-V0.0.C: 1614: StartCalc();
	call	_StartCalc	;wreg free
	line	1616
	
l3027:
# 1616 "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
clrwdt ;# 
psect	text0
	line	1617
	
l3029:
;CoilDet-V0.0.C: 1617: if(!RA5)
	btfsc	c:(31749/8),(31749)&7	;volatile
	goto	u2521
	goto	u2520
u2521:
	goto	l3033
u2520:
	line	1619
	
l3031:
;CoilDet-V0.0.C: 1618: {
;CoilDet-V0.0.C: 1619: DTOperation();
	call	_DTOperation	;wreg free
	line	1621
	
l3033:
;CoilDet-V0.0.C: 1620: }
;CoilDet-V0.0.C: 1621: a++;k++;
	incf	((c:main@a)),c
	
l3035:
	incf	((c:main@k)),c
	line	1622
	
l3037:
;CoilDet-V0.0.C: 1622: t++;
	incf	((c:main@t)),c
	line	1623
	
l3039:
;CoilDet-V0.0.C: 1623: if(t>=20)
	movlw	(014h-1)
	cpfsgt	((c:main@t)),c
	goto	u2531
	goto	u2530
u2531:
	goto	l3045
u2530:
	line	1626
	
l3041:
;CoilDet-V0.0.C: 1624: {
;CoilDet-V0.0.C: 1626: t=0;
	clrf	((c:main@t)),c
	line	1627
	
l3043:
;CoilDet-V0.0.C: 1627: Ch_Timeout_Processing();
	call	_Ch_Timeout_Processing	;wreg free
	line	1630
	
l3045:
;CoilDet-V0.0.C: 1628: }
;CoilDet-V0.0.C: 1630: if(k>=50)
	movlw	(032h-1)
	cpfsgt	((c:main@k)),c
	goto	u2541
	goto	u2540
u2541:
	goto	l3061
u2540:
	line	1632
	
l3047:
;CoilDet-V0.0.C: 1631: {
;CoilDet-V0.0.C: 1632: k=0;
	clrf	((c:main@k)),c
	line	1633
;CoilDet-V0.0.C: 1633: for(j=0;j<8;j++)
	clrf	((c:main@j)),c
	line	1636
	
l3053:
;CoilDet-V0.0.C: 1634: {
;CoilDet-V0.0.C: 1636: if((det_fillbuf_enable>>j)&0x01)
	movff	(c:main@j),??_main+0+0
	movff	(c:_det_fillbuf_enable),??_main+1+0
	incf	(??_main+0+0),c
	goto	u2554
u2555:
	bcf	status,0
	rrcf	(??_main+1+0),c
u2554:
	decfsz	(??_main+0+0),c
	goto	u2555
	
	btfss	(??_main+1+0),c,(0)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l3057
u2560:
	line	1637
	
l3055:
;CoilDet-V0.0.C: 1637: DetBufWrite(det_timer_conter[j],j);
	movf	((c:main@j)),c,w
	mullw	02h
	movf	(prodl),c,w
	movlb	0	; () banked
	addlw	low(_det_timer_conter)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:?_DetBufWrite)
	movff	postdec2,(c:?_DetBufWrite+1)
	movff	(c:main@j),0+((c:?_DetBufWrite)+02h)
	call	_DetBufWrite	;wreg free
	line	1633
	
l3057:
	incf	((c:main@j)),c
	
l3059:
	movlw	(08h-1)
	cpfsgt	((c:main@j)),c
	goto	u2571
	goto	u2570
u2571:
	goto	l3053
u2570:
	line	1640
	
l3061:
;CoilDet-V0.0.C: 1638: }
;CoilDet-V0.0.C: 1639: }
;CoilDet-V0.0.C: 1640: if(a>=200)
	movlw	(0C8h-1)
	cpfsgt	((c:main@a)),c
	goto	u2581
	goto	u2580
u2581:
	goto	l3023
u2580:
	line	1642
	
l3063:
;CoilDet-V0.0.C: 1641: {
;CoilDet-V0.0.C: 1642: a =0x00;
	clrf	((c:main@a)),c
	line	1643
	
l3065:
;CoilDet-V0.0.C: 1643: det_start++;
	incf	((c:_det_start)),c
	line	1644
	
l3067:
;CoilDet-V0.0.C: 1644: if(det_start>=1)
	movf	((c:_det_start)),c,w
	btfsc	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l3073
u2590:
	line	1646
	
l3069:
;CoilDet-V0.0.C: 1645: {
;CoilDet-V0.0.C: 1646: det_start=1;
	movlw	low(01h)
	movwf	((c:_det_start)),c
	line	1647
	
l3071:
;CoilDet-V0.0.C: 1647: det_output_enable = 1;
	movlb	(_det_output_enable/8) >> 8
	bsf	(_det_output_enable/8),c,(_det_output_enable)&7
	line	1652
	
l3073:
;CoilDet-V0.0.C: 1649: }
;CoilDet-V0.0.C: 1652: for(j=0;j<8;j++)
	clrf	((c:main@j)),c
	line	1655
	
l3079:
;CoilDet-V0.0.C: 1653: {
;CoilDet-V0.0.C: 1655: det_timer_average[j] = GetTimeAverage(j);
	movf	((c:main@j)),c,w
	
	call	_GetTimeAverage
	movf	((c:main@j)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low((c:_det_timer_average))
	movwf	fsr2l
	clrf	fsr2h
	movff	0+?_GetTimeAverage,postinc2
	movff	1+?_GetTimeAverage,postdec2

	line	1656
	
l3081:
;CoilDet-V0.0.C: 1656: DT_data1[2] = det_timer_average[7] >>8;
	movf	(1+((c:_det_timer_average)+0Eh)),c,w
	movlb	0	; () banked
	movwf	(0+(_DT_data1+02h))&0ffh
	line	1657
	
l3083:; BSR set to: 0

;CoilDet-V0.0.C: 1657: DT_data1[3] = det_timer_average[7];
	movff	0+((c:_det_timer_average)+0Eh),0+(_DT_data1+03h)
	line	1652
	
l3085:; BSR set to: 0

	incf	((c:main@j)),c
	
l3087:; BSR set to: 0

	movlw	(08h-1)
	cpfsgt	((c:main@j)),c
	goto	u2601
	goto	u2600
u2601:
	goto	l3079
u2600:
	goto	l3023
	global	start
	goto	start
	opt stack 0
psect	text1,class=CODE,space=0,reloc=2
global __ptext1
__ptext1:
	line	1665
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_Ch_Timeout_Processing

;; *************** function _Ch_Timeout_Processing *****************
;; Defined at:
;;		line 173 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   21[COMRAM] unsigned char 
;;  j               1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_DetBufWrite
;;		_GetTimeAverage
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	173
	global	__size_of_Ch_Timeout_Processing
	__size_of_Ch_Timeout_Processing	equ	__end_of_Ch_Timeout_Processing-_Ch_Timeout_Processing
	
_Ch_Timeout_Processing:; BSR set to: 0

	opt	stack 27
	line	174
	
l2335:
;CoilDet-V0.0.C: 174: unsigned char i=0,j=0;
	clrf	((c:Ch_Timeout_Processing@i)),c
	line	176
;CoilDet-V0.0.C: 176: for(i=0;i<8;i++)
	clrf	((c:Ch_Timeout_Processing@i)),c
	line	178
	
l2341:
;CoilDet-V0.0.C: 177: {
;CoilDet-V0.0.C: 178: if(det_result_output & (0x01<<i))
	movff	(c:Ch_Timeout_Processing@i),??_Ch_Timeout_Processing+0+0
	movlw	(01h)&0ffh
	movwf	(??_Ch_Timeout_Processing+1+0)&0ffh,c
	incf	(??_Ch_Timeout_Processing+0+0),c
	goto	u1404
u1405:
	bcf	status,0
	rlcf	((??_Ch_Timeout_Processing+1+0)),c
u1404:
	decfsz	(??_Ch_Timeout_Processing+0+0),c
	goto	u1405
	movf	((??_Ch_Timeout_Processing+1+0)),c,w
	andwf	((c:_det_result_output)),c,w
	iorlw	0
	btfsc	status,2
	goto	u1411
	goto	u1410
u1411:
	goto	l2361
u1410:
	line	181
	
l2343:
;CoilDet-V0.0.C: 179: {
;CoilDet-V0.0.C: 181: ch_timeout_timer[i]++;
	movf	((c:Ch_Timeout_Processing@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	movlb	0	; () banked
	addlw	low(_ch_timeout_timer)
	movwf	fsr2l
	clrf	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	182
;CoilDet-V0.0.C: 182: if(ch_timeout_timer[i]>=300)
	movf	((c:Ch_Timeout_Processing@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_ch_timeout_timer)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_Ch_Timeout_Processing+0+0
	movff	postdec2,??_Ch_Timeout_Processing+0+0+1
	movlw	02Ch
	subwf	(??_Ch_Timeout_Processing+0+0),c,w
	movlw	01h
	subwfb	(??_Ch_Timeout_Processing+0+1),c,w
	btfss	status,0
	goto	u1421
	goto	u1420
u1421:
	goto	l2361
u1420:
	line	184
	
l2345:; BSR set to: 0

;CoilDet-V0.0.C: 183: {
;CoilDet-V0.0.C: 184: ch_timeout_timer[i] =0;
	movf	((c:Ch_Timeout_Processing@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_ch_timeout_timer)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postdec2
	line	185
	
l2347:; BSR set to: 0

;CoilDet-V0.0.C: 185: for(j=0;j<10;j++)
	clrf	((c:Ch_Timeout_Processing@j)),c
	line	188
	
l2353:; BSR set to: 0

;CoilDet-V0.0.C: 186: {
;CoilDet-V0.0.C: 188: DetBufWrite(det_timer_conter[i],i);
	movf	((c:Ch_Timeout_Processing@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_det_timer_conter)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,(c:?_DetBufWrite)
	movff	postdec2,(c:?_DetBufWrite+1)
	movff	(c:Ch_Timeout_Processing@i),0+((c:?_DetBufWrite)+02h)
	call	_DetBufWrite	;wreg free
	line	185
	
l2355:; BSR set to: 0

	incf	((c:Ch_Timeout_Processing@j)),c
	
l2357:; BSR set to: 0

	movlw	(0Ah-1)
	cpfsgt	((c:Ch_Timeout_Processing@j)),c
	goto	u1431
	goto	u1430
u1431:
	goto	l2353
u1430:
	line	192
	
l2359:; BSR set to: 0

;CoilDet-V0.0.C: 190: }
;CoilDet-V0.0.C: 192: det_timer_average[i] = GetTimeAverage(i);
	movf	((c:Ch_Timeout_Processing@i)),c,w
	
	call	_GetTimeAverage
	movf	((c:Ch_Timeout_Processing@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low((c:_det_timer_average))
	movwf	fsr2l
	clrf	fsr2h
	movff	0+?_GetTimeAverage,postinc2
	movff	1+?_GetTimeAverage,postdec2

	line	176
	
l2361:
	incf	((c:Ch_Timeout_Processing@i)),c
	
l2363:
	movlw	(08h-1)
	cpfsgt	((c:Ch_Timeout_Processing@i)),c
	goto	u1441
	goto	u1440
u1441:
	goto	l2341
u1440:
	line	197
	
l541:
	return
	opt stack 0
GLOBAL	__end_of_Ch_Timeout_Processing
	__end_of_Ch_Timeout_Processing:
	signat	_Ch_Timeout_Processing,88
	global	_DetBufWrite

;; *************** function _DetBufWrite *****************
;; Defined at:
;;		line 935 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMRAM] unsigned int 
;;  ch              1    2[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Ch_Timeout_Processing
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,class=CODE,space=0,reloc=2
global __ptext2
__ptext2:
psect	text2
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	935
	global	__size_of_DetBufWrite
	__size_of_DetBufWrite	equ	__end_of_DetBufWrite-_DetBufWrite
	
_DetBufWrite:
	opt	stack 28
	line	936
	
l2365:; BSR set to: 0

;CoilDet-V0.0.C: 936: det_timer_counter_buf[ch][det_buf_p[ch]] = val;
	movf	((c:DetBufWrite@ch)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_DetBufWrite+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_DetBufWrite+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_DetBufWrite+0+0),c
	movlw	0
	addwfc	(??_DetBufWrite+0+1),c
	movf	((c:DetBufWrite@ch)),c,w
	addlw	low(_det_buf_p)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_DetBufWrite+0+0),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	(??_DetBufWrite+0+1),c,w
	movwf	1+c:fsr2l
	movff	(c:DetBufWrite@val),postinc2
	movff	(c:DetBufWrite@val+1),postdec2
	line	937
	
l2367:; BSR set to: 0

;CoilDet-V0.0.C: 937: det_buf_p[ch]++;
	movf	((c:DetBufWrite@ch)),c,w
	addlw	low(_det_buf_p)
	movwf	fsr2l
	clrf	fsr2h
	incf	indf2

	line	939
	
l2369:; BSR set to: 0

;CoilDet-V0.0.C: 939: if(det_buf_p[ch]>=10)
	movf	((c:DetBufWrite@ch)),c,w
	addlw	low(_det_buf_p)
	movwf	fsr2l
	clrf	fsr2h
	movlw	(0Ah-1)
	cpfsgt	indf2
	goto	u1451
	goto	u1450
u1451:
	goto	l664
u1450:
	line	941
	
l2371:; BSR set to: 0

;CoilDet-V0.0.C: 940: {
;CoilDet-V0.0.C: 941: det_buf_p[ch] = 0;
	movf	((c:DetBufWrite@ch)),c,w
	addlw	low(_det_buf_p)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	943
	
l664:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_DetBufWrite
	__end_of_DetBufWrite:
	signat	_DetBufWrite,8312
	global	_PORTInit

;; *************** function _PORTInit *****************
;; Defined at:
;;		line 403 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/F
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,class=CODE,space=0,reloc=2
global __ptext3
__ptext3:
psect	text3
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	403
	global	__size_of_PORTInit
	__size_of_PORTInit	equ	__end_of_PORTInit-_PORTInit
	
_PORTInit:; BSR set to: 0

	opt	stack 28
	line	404
	
l2425:
;CoilDet-V0.0.C: 404: ANCON1 = 0X00;
	movlb	15	; () banked
	clrf	((3932))&0ffh	;volatile
	line	405
;CoilDet-V0.0.C: 405: ANCON0 = 0X00;
	clrf	((3933))&0ffh	;volatile
	line	408
;CoilDet-V0.0.C: 408: RBIE=0;
	bcf	c:(32659/8),(32659)&7	;volatile
	line	411
;CoilDet-V0.0.C: 411: TRISA = 0x00;
	clrf	((c:3986)),c	;volatile
	line	412
;CoilDet-V0.0.C: 412: TRISB = 0x00;
	clrf	((c:3987)),c	;volatile
	line	413
;CoilDet-V0.0.C: 413: TRISC = 0x00;
	clrf	((c:3988)),c	;volatile
	line	414
;CoilDet-V0.0.C: 414: TRISD = 0x00;
	clrf	((c:3989)),c	;volatile
	line	415
;CoilDet-V0.0.C: 415: TRISE = 0x00;
	clrf	((c:3990)),c	;volatile
	line	417
;CoilDet-V0.0.C: 417: PORTD = 0Xff;
	setf	((c:3971)),c	;volatile
	line	418
;CoilDet-V0.0.C: 418: RC0 = 1;
	bsf	c:(31760/8),(31760)&7	;volatile
	line	419
;CoilDet-V0.0.C: 419: RC1 = 1;
	bsf	c:(31761/8),(31761)&7	;volatile
	line	420
;CoilDet-V0.0.C: 420: RC2 = 1;
	bsf	c:(31762/8),(31762)&7	;volatile
	line	421
;CoilDet-V0.0.C: 421: RC6 = 1;
	bsf	c:(31766/8),(31766)&7	;volatile
	line	422
;CoilDet-V0.0.C: 422: RC7 = 1;
	bsf	c:(31767/8),(31767)&7	;volatile
	line	423
;CoilDet-V0.0.C: 423: RA1 = 1;
	bsf	c:(31745/8),(31745)&7	;volatile
	line	424
;CoilDet-V0.0.C: 424: RA2 = 1;
	bsf	c:(31746/8),(31746)&7	;volatile
	line	425
;CoilDet-V0.0.C: 425: RA3 = 1;
	bsf	c:(31747/8),(31747)&7	;volatile
	line	428
	
l2427:; BSR set to: 15

;CoilDet-V0.0.C: 428: TRISB |= 0x20;
	bsf	(0+(5/8)+(c:3987)),c,(5)&7	;volatile
	line	431
;CoilDet-V0.0.C: 431: TRISC |= 0x08;
	bsf	(0+(3/8)+(c:3988)),c,(3)&7	;volatile
	line	432
;CoilDet-V0.0.C: 432: TRISC |= 0x10;
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	433
;CoilDet-V0.0.C: 433: TRISC |= 0x20;
	bsf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	435
	
l2429:; BSR set to: 15

;CoilDet-V0.0.C: 435: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	436
	
l2431:; BSR set to: 15

;CoilDet-V0.0.C: 436: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	437
	
l2433:; BSR set to: 15

;CoilDet-V0.0.C: 437: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	439
;CoilDet-V0.0.C: 439: TRISA |= 0x20;
	bsf	(0+(5/8)+(c:3986)),c,(5)&7	;volatile
	line	441
	
l570:; BSR set to: 15

	return
	opt stack 0
GLOBAL	__end_of_PORTInit
	__end_of_PORTInit:
	signat	_PORTInit,88
	global	_IntManager

;; *************** function _IntManager *****************
;; Defined at:
;;		line 445 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : F/F
;;		On exit  : F/F
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,class=CODE,space=0,reloc=2
global __ptext4
__ptext4:
psect	text4
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	445
	global	__size_of_IntManager
	__size_of_IntManager	equ	__end_of_IntManager-_IntManager
	
_IntManager:; BSR set to: 15

	opt	stack 28
	line	447
	
l2435:; BSR set to: 15

;CoilDet-V0.0.C: 447: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	451
	
l2437:; BSR set to: 15

;CoilDet-V0.0.C: 451: TMR0IE = 1;
	bsf	c:(32661/8),(32661)&7	;volatile
	line	452
	
l2439:; BSR set to: 15

;CoilDet-V0.0.C: 452: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	453
	
l2441:; BSR set to: 15

;CoilDet-V0.0.C: 453: T08BIT = 0;
	bcf	c:(32430/8),(32430)&7	;volatile
	line	454
	
l2443:; BSR set to: 15

;CoilDet-V0.0.C: 454: T0CS = 0;
	bcf	c:(32429/8),(32429)&7	;volatile
	line	456
	
l2445:; BSR set to: 15

;CoilDet-V0.0.C: 456: TMR0H = 0xd8;
	movlw	low(0D8h)
	movwf	((c:4055)),c	;volatile
	line	457
	
l2447:; BSR set to: 15

;CoilDet-V0.0.C: 457: TMR0L = 0xef;
	movlw	low(0EFh)
	movwf	((c:4054)),c	;volatile
	line	459
	
l2449:; BSR set to: 15

;CoilDet-V0.0.C: 459: TMR0ON = 1;
	bsf	c:(32431/8),(32431)&7	;volatile
	line	474
	
l2451:; BSR set to: 15

;CoilDet-V0.0.C: 474: T3CON = 0x84;
	movlw	low(084h)
	movwf	((c:4017)),c	;volatile
	line	476
	
l573:; BSR set to: 15

	return
	opt stack 0
GLOBAL	__end_of_IntManager
	__end_of_IntManager:
	signat	_IntManager,88
	global	_SetConfig

;; *************** function _SetConfig *****************
;; Defined at:
;;		line 592 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  EEPromData     22    9[COMRAM] unsigned char [22]
;;  i               1   31[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        23       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        24       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       24 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EEPROMRead
;;		_SetFreq
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,class=CODE,space=0,reloc=2
global __ptext5
__ptext5:
psect	text5
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	592
	global	__size_of_SetConfig
	__size_of_SetConfig	equ	__end_of_SetConfig-_SetConfig
	
_SetConfig:; BSR set to: 15

	opt	stack 26
	line	594
	
l2509:; BSR set to: 15

;CoilDet-V0.0.C: 593: unsigned char EEPromData[4+16+2];
;CoilDet-V0.0.C: 594: unsigned char i = 0x00;
	clrf	((c:SetConfig@i)),c
	line	601
;CoilDet-V0.0.C: 601: for(i=0;i<(4+16+2);i++)
	clrf	((c:SetConfig@i)),c
	line	603
	
l2515:; BSR set to: 15

;CoilDet-V0.0.C: 602: {
;CoilDet-V0.0.C: 603: EEPromData[i] = 0x00;
	movf	((c:SetConfig@i)),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	indf2
	line	601
	
l2517:; BSR set to: 15

	incf	((c:SetConfig@i)),c
	
l2519:; BSR set to: 15

	movlw	(016h-1)
	cpfsgt	((c:SetConfig@i)),c
	goto	u1571
	goto	u1570
u1571:
	goto	l2515
u1570:
	line	607
	
l2521:; BSR set to: 15

;CoilDet-V0.0.C: 604: }
;CoilDet-V0.0.C: 607: eeprom_addr = 0x0005;
	movlw	high(05h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(05h)
	movwf	((c:_eeprom_addr)),c
	line	608
;CoilDet-V0.0.C: 608: eeprom_num = 4+16+2;
	movlw	low(016h)
	movwf	((c:_eeprom_num)),c
	line	609
	
l2523:; BSR set to: 15

;CoilDet-V0.0.C: 609: EEPROMRead(&eeprom_addr,&eeprom_num,EEPromData);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMRead)),c
	movlw	low((c:SetConfig@EEPromData))
	movwf	(0+((c:?_EEPROMRead)+01h)),c
	movlw	high((c:SetConfig@EEPromData))
	movwf	(1+((c:?_EEPROMRead)+01h)),c
	movlw	0fh
	movwf	(1+((c:?_EEPROMRead)+01h)),c
	movlw	__accesstop-1
	cpfsgt	(0+((c:?_EEPROMRead)+01h)),c
	clrf	(1+((c:?_EEPROMRead)+01h)),c
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMRead
	line	612
	
l2525:
;CoilDet-V0.0.C: 612: det_current_sens[0] = EEPromData[4 + EEPromData[0] & 0x0f];
	movff	(c:SetConfig@EEPromData),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0Fh
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:_det_current_sens)),c
	line	613
	
l2527:
;CoilDet-V0.0.C: 613: det_current_sens[1] = EEPromData[4 + EEPromData[0] & 0xf0];
	movff	(c:SetConfig@EEPromData),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0F0h
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+01h)),c
	line	614
	
l2529:
;CoilDet-V0.0.C: 614: det_current_sens[2] = EEPromData[4 + EEPromData[1] & 0x0f];
	movff	0+((c:SetConfig@EEPromData)+01h),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0Fh
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+02h)),c
	line	615
	
l2531:
;CoilDet-V0.0.C: 615: det_current_sens[3] = EEPromData[4 + EEPromData[1] & 0xf0];
	movff	0+((c:SetConfig@EEPromData)+01h),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0F0h
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+03h)),c
	line	616
	
l2533:
;CoilDet-V0.0.C: 616: det_current_sens[4] = EEPromData[4 + EEPromData[2] & 0x0f];
	movff	0+((c:SetConfig@EEPromData)+02h),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0Fh
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+04h)),c
	line	617
	
l2535:
;CoilDet-V0.0.C: 617: det_current_sens[5] = EEPromData[4 + EEPromData[2] & 0xf0];
	movff	0+((c:SetConfig@EEPromData)+02h),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0F0h
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+05h)),c
	line	618
	
l2537:
;CoilDet-V0.0.C: 618: det_current_sens[6] = EEPromData[4 + EEPromData[3] & 0x0f];
	movff	0+((c:SetConfig@EEPromData)+03h),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0Fh
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+06h)),c
	line	619
	
l2539:
;CoilDet-V0.0.C: 619: det_current_sens[7] = EEPromData[4 + EEPromData[3] & 0xf0];
	movff	0+((c:SetConfig@EEPromData)+03h),??_SetConfig+0+0
	movlw	04h
	addwf	(??_SetConfig+0+0),c
	movlw	0F0h
	andwf	(??_SetConfig+0+0),c
	movf	(??_SetConfig+0+0),c,w
	addlw	low((c:SetConfig@EEPromData))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+07h)),c
	line	622
	
l2541:
;CoilDet-V0.0.C: 622: det_osc_cfg[0] = EEPromData[20];
	movff	0+((c:SetConfig@EEPromData)+014h),(c:_det_osc_cfg)
	line	623
	
l2543:
;CoilDet-V0.0.C: 623: det_osc_cfg[1] = EEPromData[21];
	movff	0+((c:SetConfig@EEPromData)+015h),0+((c:_det_osc_cfg)+01h)
	line	624
	
l2545:
;CoilDet-V0.0.C: 624: SetFreq(det_osc_cfg);
	movlw	((c:_det_osc_cfg))&0ffh
	
	call	_SetFreq
	line	625
	
l599:
	return
	opt stack 0
GLOBAL	__end_of_SetConfig
	__end_of_SetConfig:
	signat	_SetConfig,88
	global	_DetInit

;; *************** function _DetInit *****************
;; Defined at:
;;		line 909 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   21[COMRAM] unsigned char 
;;  j               1   20[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayus
;;		_GetTimerCounter
;;		_GetTimeAverage
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,class=CODE,space=0,reloc=2
global __ptext6
__ptext6:
psect	text6
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	909
	global	__size_of_DetInit
	__size_of_DetInit	equ	__end_of_DetInit-_DetInit
	
_DetInit:
	opt	stack 27
	line	910
	
l2665:
;CoilDet-V0.0.C: 910: unsigned char i = 0x00,j=0x00;
	clrf	((c:DetInit@i)),c
	line	912
;CoilDet-V0.0.C: 912: for(i=0;i<8;i++)
	clrf	((c:DetInit@i)),c
	
l2667:
	movlw	(08h-1)
	cpfsgt	((c:DetInit@i)),c
	goto	u1751
	goto	u1750
u1751:
	goto	l2671
u1750:
	goto	l656
	line	914
	
l2671:
;CoilDet-V0.0.C: 913: {
;CoilDet-V0.0.C: 914: if(det_enable & (0x01 <<i))
	movff	(c:DetInit@i),??_DetInit+0+0
	movlw	(01h)&0ffh
	movwf	(??_DetInit+1+0)&0ffh,c
	incf	(??_DetInit+0+0),c
	goto	u1764
u1765:
	bcf	status,0
	rlcf	((??_DetInit+1+0)),c
u1764:
	decfsz	(??_DetInit+0+0),c
	goto	u1765
	movf	((??_DetInit+1+0)),c,w
	andwf	((c:_det_enable)),c,w
	iorlw	0
	btfsc	status,2
	goto	u1771
	goto	u1770
u1771:
	goto	l2697
u1770:
	line	916
	
l2673:
;CoilDet-V0.0.C: 915: {
;CoilDet-V0.0.C: 916: PORTD = 0xFF;
	setf	((c:3971)),c	;volatile
	line	917
	
l2675:
;CoilDet-V0.0.C: 917: PORTD = (~(0x01 << i));
	movff	(c:DetInit@i),??_DetInit+0+0
	movlw	(01h)&0ffh
	movwf	(??_DetInit+1+0)&0ffh,c
	incf	(??_DetInit+0+0),c
	goto	u1784
u1785:
	bcf	status,0
	rlcf	((??_DetInit+1+0)),c
u1784:
	decfsz	(??_DetInit+0+0),c
	goto	u1785
	movf	((??_DetInit+1+0)),c,w
	xorlw	0ffh
	movwf	((c:3971)),c	;volatile
	line	919
	
l2677:
;CoilDet-V0.0.C: 919: delayus(100);
	movlw	high(064h)
	movwf	((c:?_delayus+1)),c
	movlw	low(064h)
	movwf	((c:?_delayus)),c
	call	_delayus	;wreg free
	line	920
	
l2679:
;CoilDet-V0.0.C: 920: det_timer_counter_buf[i][0] = GetTimerCounter(i);
	movf	((c:DetInit@i)),c,w
	
	call	_GetTimerCounter
	movf	((c:DetInit@i)),c,w
	mullw	014h
	movlb	1	; () banked
	movlw	low(_det_timer_counter_buf)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_det_timer_counter_buf)
	addwfc	1+c:fsr2l
	movff	0+?_GetTimerCounter,postinc2
	movff	1+?_GetTimerCounter,postdec2

	line	921
	
l2681:; BSR set to: 1

;CoilDet-V0.0.C: 921: for(j=1;j<10;j++)
	movlw	low(01h)
	movwf	((c:DetInit@j)),c
	line	923
	
l2687:; BSR set to: 1

;CoilDet-V0.0.C: 922: {
;CoilDet-V0.0.C: 923: det_timer_counter_buf[i][j] = det_timer_counter_buf[i][0];
	movf	((c:DetInit@i)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_det_timer_counter_buf)
	addwfc	1+c:fsr2l
	movf	((c:DetInit@i)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_DetInit+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_DetInit+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_DetInit+0+0),c
	movlw	0
	addwfc	(??_DetInit+0+1),c
	movf	((c:DetInit@j)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_DetInit+0+0),c,w
	movwf	c:fsr1l
	movlw	0
	addwfc	(??_DetInit+0+1),c,w
	movwf	1+c:fsr1l
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	line	921
	
l2689:; BSR set to: 1

	incf	((c:DetInit@j)),c
	
l2691:; BSR set to: 1

	movlw	(0Ah-1)
	cpfsgt	((c:DetInit@j)),c
	goto	u1791
	goto	u1790
u1791:
	goto	l2687
u1790:
	line	925
	
l2693:; BSR set to: 1

;CoilDet-V0.0.C: 924: }
;CoilDet-V0.0.C: 925: det_timer_average[i] = GetTimeAverage(i);
	movf	((c:DetInit@i)),c,w
	
	call	_GetTimeAverage
	movf	((c:DetInit@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low((c:_det_timer_average))
	movwf	fsr2l
	clrf	fsr2h
	movff	0+?_GetTimeAverage,postinc2
	movff	1+?_GetTimeAverage,postdec2

	line	926
	
l2695:
;CoilDet-V0.0.C: 926: det_timer_base[i] = det_timer_average[i];
	movf	((c:DetInit@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low((c:_det_timer_average))
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:DetInit@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	movlb	0	; () banked
	addlw	low(_det_timer_base)
	movwf	fsr1l
	clrf	fsr1h
	movff	postinc2,postinc1
	movff	postdec2,postdec1
	line	912
	
l2697:
	incf	((c:DetInit@i)),c
	goto	l2667
	
l656:
	line	929
;CoilDet-V0.0.C: 927: }
;CoilDet-V0.0.C: 928: }
;CoilDet-V0.0.C: 929: PORTD = 0xFF;
	setf	((c:3971)),c	;volatile
	line	930
	
l660:
	return
	opt stack 0
GLOBAL	__end_of_DetInit
	__end_of_DetInit:
	signat	_DetInit,88
	global	_GetTimeAverage

;; *************** function _GetTimeAverage *****************
;; Defined at:
;;		line 782 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1   16[COMRAM] unsigned char 
;;  tempSum         4   10[COMRAM] unsigned long 
;;  tempData1       2    8[COMRAM] unsigned int 
;;  tempData        2    6[COMRAM] unsigned int 
;;  i               1   17[COMRAM] unsigned char 
;;  k               1   15[COMRAM] unsigned char 
;;  j               1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:        12       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        18       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Ch_Timeout_Processing
;;		_DetInit
;;		_main
;; This function uses a non-reentrant model
;;
psect	text7,class=CODE,space=0,reloc=2
global __ptext7
__ptext7:
psect	text7
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	782
	global	__size_of_GetTimeAverage
	__size_of_GetTimeAverage	equ	__end_of_GetTimeAverage-_GetTimeAverage
	
_GetTimeAverage:
	opt	stack 28
;GetTimeAverage@ch stored from wreg
	movff	wreg,(c:GetTimeAverage@ch)
	line	783
	
l2373:
;CoilDet-V0.0.C: 783: unsigned char i=0;
	clrf	((c:GetTimeAverage@i)),c
	line	785
;CoilDet-V0.0.C: 784: unsigned char j,k;
;CoilDet-V0.0.C: 785: unsigned int tempData = 0x0000,tempData1;
	clrf	((c:GetTimeAverage@tempData)),c
	clrf	((c:GetTimeAverage@tempData+1)),c
	line	787
;CoilDet-V0.0.C: 787: tempData1 = 0xffff;
	setf	((c:GetTimeAverage@tempData1)),c
	setf	((c:GetTimeAverage@tempData1+1)),c
	line	788
;CoilDet-V0.0.C: 788: j=0;k=0;
	clrf	((c:GetTimeAverage@j)),c
	clrf	((c:GetTimeAverage@k)),c
	line	789
;CoilDet-V0.0.C: 789: for(i=0;i<10;i++)
	clrf	((c:GetTimeAverage@i)),c
	line	791
	
l2379:
;CoilDet-V0.0.C: 790: {
;CoilDet-V0.0.C: 791: if(tempData < det_timer_counter_buf[ch][i])
	movf	((c:GetTimeAverage@ch)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c
	movf	((c:GetTimeAverage@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_GetTimeAverage+2+0
	movff	postdec2,??_GetTimeAverage+2+0+1
	movf	(??_GetTimeAverage+2+0),c,w
	subwf	((c:GetTimeAverage@tempData)),c,w
	movf	(??_GetTimeAverage+2+1),c,w
	subwfb	((c:GetTimeAverage@tempData+1)),c,w
	btfsc	status,0
	goto	u1461
	goto	u1460
u1461:
	goto	l633
u1460:
	line	793
	
l2381:
;CoilDet-V0.0.C: 792: {
;CoilDet-V0.0.C: 793: j = i;
	movff	(c:GetTimeAverage@i),(c:GetTimeAverage@j)
	line	794
	
l2383:
;CoilDet-V0.0.C: 794: tempData = det_timer_counter_buf[ch][i];
	movf	((c:GetTimeAverage@ch)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c
	movf	((c:GetTimeAverage@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:GetTimeAverage@tempData)
	movff	postdec2,(c:GetTimeAverage@tempData+1)
	line	795
	
l633:
	line	796
;CoilDet-V0.0.C: 795: }
;CoilDet-V0.0.C: 796: if(tempData1> det_timer_counter_buf[ch][i])
	movf	((c:GetTimeAverage@ch)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c
	movf	((c:GetTimeAverage@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_GetTimeAverage+2+0
	movff	postdec2,??_GetTimeAverage+2+0+1
	movf	((c:GetTimeAverage@tempData1)),c,w
	subwf	(??_GetTimeAverage+2+0),c,w
	movf	((c:GetTimeAverage@tempData1+1)),c,w
	subwfb	(??_GetTimeAverage+2+1),c,w
	btfsc	status,0
	goto	u1471
	goto	u1470
u1471:
	goto	l2389
u1470:
	line	798
	
l2385:
;CoilDet-V0.0.C: 797: {
;CoilDet-V0.0.C: 798: k = i;
	movff	(c:GetTimeAverage@i),(c:GetTimeAverage@k)
	line	799
	
l2387:
;CoilDet-V0.0.C: 799: tempData1= det_timer_counter_buf[ch][i];
	movf	((c:GetTimeAverage@ch)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c
	movf	((c:GetTimeAverage@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,(c:GetTimeAverage@tempData1)
	movff	postdec2,(c:GetTimeAverage@tempData1+1)
	line	789
	
l2389:
	incf	((c:GetTimeAverage@i)),c
	
l2391:
	movlw	(0Ah-1)
	cpfsgt	((c:GetTimeAverage@i)),c
	goto	u1481
	goto	u1480
u1481:
	goto	l2379
u1480:
	
l632:
	line	803
;CoilDet-V0.0.C: 800: }
;CoilDet-V0.0.C: 802: }
;CoilDet-V0.0.C: 803: tempSum = 0x00000000;
	clrf	((c:GetTimeAverage@tempSum)),c
	clrf	((c:GetTimeAverage@tempSum+1)),c
	clrf	((c:GetTimeAverage@tempSum+2)),c
	clrf	((c:GetTimeAverage@tempSum+3)),c

	line	804
	
l2393:
;CoilDet-V0.0.C: 804: if(j!=k)
	movf	((c:GetTimeAverage@j)),c,w
	xorwf	((c:GetTimeAverage@k)),c,w
	btfsc	status,2
	goto	u1491
	goto	u1490
u1491:
	goto	l2421
u1490:
	line	806
	
l2395:
;CoilDet-V0.0.C: 805: {
;CoilDet-V0.0.C: 806: for(i=0;i<10;i++)
	clrf	((c:GetTimeAverage@i)),c
	line	808
	
l2401:
;CoilDet-V0.0.C: 807: {
;CoilDet-V0.0.C: 808: if(i==j)continue;
	movf	((c:GetTimeAverage@j)),c,w
	cpfseq	((c:GetTimeAverage@i)),c
	goto	u1501
	goto	u1500
u1501:
	goto	l2405
u1500:
	goto	l2411
	line	809
	
l2405:
;CoilDet-V0.0.C: 809: if(i==k)continue;
	movf	((c:GetTimeAverage@k)),c,w
	cpfseq	((c:GetTimeAverage@i)),c
	goto	u1511
	goto	u1510
u1511:
	goto	l2409
u1510:
	goto	l2411
	line	810
	
l2409:
;CoilDet-V0.0.C: 810: tempSum += det_timer_counter_buf[ch][i];
	movf	((c:GetTimeAverage@ch)),c,w
	mullw	014h
	movlw	low(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0)&0ffh,c
	movlw	high(_det_timer_counter_buf)
	movwf	(??_GetTimeAverage+0+0+1)&0ffh,c
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c
	movf	((c:GetTimeAverage@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addwf	(??_GetTimeAverage+0+0),c,w
	movwf	c:fsr2l
	movlw	0
	addwfc	(??_GetTimeAverage+0+1),c,w
	movwf	1+c:fsr2l
	movff	postinc2,??_GetTimeAverage+2+0
	movff	postdec2,??_GetTimeAverage+2+0+1
	movf	(??_GetTimeAverage+2+0),c,w
	addwf	((c:GetTimeAverage@tempSum)),c
	movf	(??_GetTimeAverage+2+1),c,w
	addwfc	((c:GetTimeAverage@tempSum+1)),c
	movlw	0
	addwfc	((c:GetTimeAverage@tempSum+2)),c
	movlw	0
	addwfc	((c:GetTimeAverage@tempSum+3)),c

	line	806
	
l2411:
	incf	((c:GetTimeAverage@i)),c
	
l2413:
	movlw	(0Ah-1)
	cpfsgt	((c:GetTimeAverage@i)),c
	goto	u1521
	goto	u1520
u1521:
	goto	l2401
u1520:
	line	813
	
l2415:
;CoilDet-V0.0.C: 812: }
;CoilDet-V0.0.C: 813: return (tempSum>>3);
	movff	(c:GetTimeAverage@tempSum),??_GetTimeAverage+0+0
	movff	(c:GetTimeAverage@tempSum+1),??_GetTimeAverage+0+0+1
	movff	(c:GetTimeAverage@tempSum+2),??_GetTimeAverage+0+0+2
	movff	(c:GetTimeAverage@tempSum+3),??_GetTimeAverage+0+0+3
	movlw	03h+1
	goto	u1530
u1535:
	bcf	status,0
	rrcf	(??_GetTimeAverage+0+3),c
	rrcf	(??_GetTimeAverage+0+2),c
	rrcf	(??_GetTimeAverage+0+1),c
	rrcf	(??_GetTimeAverage+0+0),c
u1530:
	decfsz	wreg
	goto	u1535
	movff	??_GetTimeAverage+0+0,(c:?_GetTimeAverage)
	movff	??_GetTimeAverage+0+1,(c:?_GetTimeAverage+1)
	goto	l641
	line	817
	
l2421:
;CoilDet-V0.0.C: 815: else
;CoilDet-V0.0.C: 816: {
;CoilDet-V0.0.C: 817: return det_timer_counter_buf[ch][0];
	movf	((c:GetTimeAverage@ch)),c,w
	mullw	014h
	movlb	1	; () banked
	movlw	low(_det_timer_counter_buf)
	addwf	(prodl),c,w
	movwf	c:fsr2l
	clrf	1+c:fsr2l
	movlw	high(_det_timer_counter_buf)
	addwfc	1+c:fsr2l
	movff	postinc2,(c:?_GetTimeAverage)
	movff	postdec2,(c:?_GetTimeAverage+1)
	line	820
	
l641:
	return
	opt stack 0
GLOBAL	__end_of_GetTimeAverage
	__end_of_GetTimeAverage:
	signat	_GetTimeAverage,4218
	global	_StartDet

;; *************** function _StartDet *****************
;; Defined at:
;;		line 955 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp_timer_c    2   12[COMRAM] unsigned int 
;;  i               1   14[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr1l, fsr1h, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         7       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayus
;;		_GetTimerCounter
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,class=CODE,space=0,reloc=2
global __ptext8
__ptext8:
psect	text8
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	955
	global	__size_of_StartDet
	__size_of_StartDet	equ	__end_of_StartDet-_StartDet
	
_StartDet:
	opt	stack 27
	line	956
	
l2701:
	line	958
;CoilDet-V0.0.C: 958: unsigned char i = 0x00;
	clrf	((c:StartDet@i)),c
	line	960
;CoilDet-V0.0.C: 960: for(i=0;i<8;i++)
	clrf	((c:StartDet@i)),c
	
l2703:
	movlw	(08h-1)
	cpfsgt	((c:StartDet@i)),c
	goto	u1801
	goto	u1800
u1801:
	goto	l2707
u1800:
	goto	l672
	line	964
	
l2707:
;CoilDet-V0.0.C: 961: {
;CoilDet-V0.0.C: 964: if(det_enable & (0x01 <<i))
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1814
u1815:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1814:
	decfsz	(??_StartDet+0+0),c
	goto	u1815
	movf	((??_StartDet+1+0)),c,w
	andwf	((c:_det_enable)),c,w
	iorlw	0
	btfsc	status,2
	goto	u1821
	goto	u1820
u1821:
	goto	l2751
u1820:
	line	967
	
l2709:
;CoilDet-V0.0.C: 965: {
;CoilDet-V0.0.C: 967: PORTD = 0xff & (~(0x01 << i));
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1834
u1835:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1834:
	decfsz	(??_StartDet+0+0),c
	goto	u1835
	movf	((??_StartDet+1+0)),c,w
	xorlw	0ffh
	movwf	((c:3971)),c	;volatile
	line	970
	
l2711:
;CoilDet-V0.0.C: 970: delayus(100);
	movlw	high(064h)
	movwf	((c:?_delayus+1)),c
	movlw	low(064h)
	movwf	((c:?_delayus)),c
	call	_delayus	;wreg free
	line	971
	
l2713:
;CoilDet-V0.0.C: 971: det_timer_conter[i] = GetTimerCounter(i);
	movf	((c:StartDet@i)),c,w
	
	call	_GetTimerCounter
	movf	((c:StartDet@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	movlb	0	; () banked
	addlw	low(_det_timer_conter)
	movwf	fsr2l
	clrf	fsr2h
	movff	0+?_GetTimerCounter,postinc2
	movff	1+?_GetTimerCounter,postdec2

	line	972
	
l2715:; BSR set to: 0

;CoilDet-V0.0.C: 972: delayus(100);
	movlw	high(064h)
	movwf	((c:?_delayus+1)),c
	movlw	low(064h)
	movwf	((c:?_delayus)),c
	call	_delayus	;wreg free
	line	973
	
l2717:; BSR set to: 0

;CoilDet-V0.0.C: 973: if(i==7)
	movf	((c:StartDet@i)),c,w
	xorlw	7

	btfss	status,2
	goto	u1841
	goto	u1840
u1841:
	goto	l2723
u1840:
	line	975
	
l2719:; BSR set to: 0

;CoilDet-V0.0.C: 974: {
;CoilDet-V0.0.C: 975: DT_data1[4] = det_timer_conter[7]>>8;
	movf	(1+(_det_timer_conter+0Eh))&0ffh,w
	movwf	(0+(_DT_data1+04h))&0ffh
	line	976
	
l2721:; BSR set to: 0

;CoilDet-V0.0.C: 976: DT_data1[5] = det_timer_conter[7];
	movff	0+(_det_timer_conter+0Eh),0+(_DT_data1+05h)
	line	978
	
l2723:; BSR set to: 0

;CoilDet-V0.0.C: 977: }
;CoilDet-V0.0.C: 978: if(!det_output_enable)
	movlb	(_det_output_enable/8) >> 8
	btfsc	(_det_output_enable/8),c,(_det_output_enable)&7
	goto	u1851
	goto	u1850
u1851:
	goto	l2727
u1850:
	line	980
	
l2725:
;CoilDet-V0.0.C: 979: {
;CoilDet-V0.0.C: 980: det_fillbuf_enable |= (0x01<<i);
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1864
u1865:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1864:
	decfsz	(??_StartDet+0+0),c
	goto	u1865
	movf	((??_StartDet+1+0)),c,w
	iorwf	((c:_det_fillbuf_enable)),c
	line	981
;CoilDet-V0.0.C: 981: continue;
	goto	l2751
	line	987
	
l2727:
;CoilDet-V0.0.C: 982: }
;CoilDet-V0.0.C: 987: if(det_timer_conter[i] < det_timer_average[i])
	movf	((c:StartDet@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low((c:_det_timer_average))
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:StartDet@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	movlb	0	; () banked
	addlw	low(_det_timer_conter)
	movwf	fsr1l
	clrf	fsr1h
	movf	postinc1
	movf	postinc2
	movf	postdec2,w
	subwf	postdec1,w
	bnz	u1875
	movf	indf2,w
	subwf	indf1,w
u1875:

	btfsc	status,0
	goto	u1871
	goto	u1870
u1871:
	goto	l2747
u1870:
	line	989
	
l2729:; BSR set to: 0

;CoilDet-V0.0.C: 988: {
;CoilDet-V0.0.C: 989: temp_timer_counter = det_timer_average[i] - det_timer_conter[i];
	movf	((c:StartDet@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_det_timer_conter)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_StartDet+0+0
	movff	postdec2,??_StartDet+0+0+1
	movf	((c:StartDet@i)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low((c:_det_timer_average))
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_StartDet+2+0
	movff	postdec2,??_StartDet+2+0+1
	movf	(??_StartDet+0+0),c,w
	subwf	(??_StartDet+2+0),c,w
	
	movwf	((c:StartDet@temp_timer_counter)),c
	movf	(??_StartDet+0+1),c,w
	subwfb	(??_StartDet+2+1),c,w
	movwf	1+((c:StartDet@temp_timer_counter)),c
	line	990
	
l2731:; BSR set to: 0

;CoilDet-V0.0.C: 990: if ((temp_timer_counter) >= det_current_sens[i])
	movf	((c:StartDet@i)),c,w
	addlw	low((c:_det_current_sens))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_StartDet+0+0)&0ffh,c
	movff	(??_StartDet+0+0),??_StartDet+1+0
	clrf	(??_StartDet+1+0+1)&0ffh,c
	movf	(??_StartDet+1+0),c,w
	subwf	((c:StartDet@temp_timer_counter)),c,w
	movf	(??_StartDet+1+1),c,w
	subwfb	((c:StartDet@temp_timer_counter+1)),c,w
	btfss	status,0
	goto	u1881
	goto	u1880
u1881:
	goto	l2747
u1880:
	line	992
	
l2733:; BSR set to: 0

;CoilDet-V0.0.C: 991: {
;CoilDet-V0.0.C: 992: det_fillbuf_enable &= ~(0x01<<i);
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1894
u1895:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1894:
	decfsz	(??_StartDet+0+0),c
	goto	u1895
	movf	((??_StartDet+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_det_fillbuf_enable)),c
	line	993
	
l2735:; BSR set to: 0

;CoilDet-V0.0.C: 993: if((det_result_output>>i)&0x01)
	movff	(c:StartDet@i),??_StartDet+0+0
	movff	(c:_det_result_output),??_StartDet+1+0
	incf	(??_StartDet+0+0),c
	goto	u1904
u1905:
	bcf	status,0
	rrcf	(??_StartDet+1+0),c
u1904:
	decfsz	(??_StartDet+0+0),c
	goto	u1905
	
	btfss	(??_StartDet+1+0),c,(0)&7
	goto	u1911
	goto	u1910
u1911:
	goto	l2741
u1910:
	line	995
	
l2737:; BSR set to: 0

;CoilDet-V0.0.C: 994: {
;CoilDet-V0.0.C: 995: if(det_output_enable) det_result[0] |= 0x01 <<i;
	movlb	(_det_output_enable/8) >> 8
	btfss	(_det_output_enable/8),c,(_det_output_enable)&7
	goto	u1921
	goto	u1920
u1921:
	goto	l2751
u1920:
	
l2739:
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1934
u1935:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1934:
	decfsz	(??_StartDet+0+0),c
	goto	u1935
	movf	((??_StartDet+1+0)),c,w
	iorwf	((c:_det_result)),c
	goto	l2751
	line	999
	
l2741:; BSR set to: 0

;CoilDet-V0.0.C: 997: else
;CoilDet-V0.0.C: 998: {
;CoilDet-V0.0.C: 999: if(temp_timer_counter>=800)
	movlw	020h
	subwf	((c:StartDet@temp_timer_counter)),c,w
	movlw	03h
	subwfb	((c:StartDet@temp_timer_counter+1)),c,w
	btfss	status,0
	goto	u1941
	goto	u1940
u1941:
	goto	l682
u1940:
	goto	l2751
	line	1003
	
l682:; BSR set to: 0

	line	1005
;CoilDet-V0.0.C: 1003: else
;CoilDet-V0.0.C: 1004: {
;CoilDet-V0.0.C: 1005: if(det_output_enable) det_result[0] |= 0x01 <<i;
	movlb	(_det_output_enable/8) >> 8
	btfss	(_det_output_enable/8),c,(_det_output_enable)&7
	goto	u1951
	goto	u1950
u1951:
	goto	l685
u1950:
	goto	l2739
	line	1011
	
l2747:; BSR set to: 0

;CoilDet-V0.0.C: 1009: else
;CoilDet-V0.0.C: 1010: {
;CoilDet-V0.0.C: 1011: det_result[0] &= (~(0x01 <<i));
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1964
u1965:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1964:
	decfsz	(??_StartDet+0+0),c
	goto	u1965
	movf	((??_StartDet+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_det_result)),c
	line	1012
;CoilDet-V0.0.C: 1012: det_fillbuf_enable |= (0x01<<i);
	movff	(c:StartDet@i),??_StartDet+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartDet+1+0)&0ffh,c
	incf	(??_StartDet+0+0),c
	goto	u1974
u1975:
	bcf	status,0
	rlcf	((??_StartDet+1+0)),c
u1974:
	decfsz	(??_StartDet+0+0),c
	goto	u1975
	movf	((??_StartDet+1+0)),c,w
	iorwf	((c:_det_fillbuf_enable)),c
	goto	l2751
	line	1016
	
l685:
	line	960
;CoilDet-V0.0.C: 1016: }
;CoilDet-V0.0.C: 1017: }
	
l2751:
	incf	((c:StartDet@i)),c
	movlw	(08h-1)
	cpfsgt	((c:StartDet@i)),c
	goto	u1981
	goto	u1980
u1981:
	goto	l2707
u1980:
	
l672:
	line	1028
;CoilDet-V0.0.C: 1024: }
;CoilDet-V0.0.C: 1025: }
;CoilDet-V0.0.C: 1026: }
;CoilDet-V0.0.C: 1028: PORTD = 0xFF;
	setf	((c:3971)),c	;volatile
	line	1030
	
l687:
	return
	opt stack 0
GLOBAL	__end_of_StartDet
	__end_of_StartDet:
	signat	_StartDet,88
	global	_GetTimerCounter

;; *************** function _GetTimerCounter *****************
;; Defined at:
;;		line 826 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    7[COMRAM] unsigned char 
;;  time_val        2    5[COMRAM] unsigned int 
;;  temp_sta        1    4[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMRAM] unsigned int 
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DetInit
;;		_StartDet
;; This function uses a non-reentrant model
;;
psect	text9,class=CODE,space=0,reloc=2
global __ptext9
__ptext9:
psect	text9
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	826
	global	__size_of_GetTimerCounter
	__size_of_GetTimerCounter	equ	__end_of_GetTimerCounter-_GetTimerCounter
	
_GetTimerCounter:
	opt	stack 27
;GetTimerCounter@ch stored from wreg
	line	828
	movff	wreg,(c:GetTimerCounter@ch)
	line	827
	
l2635:
	line	828
;CoilDet-V0.0.C: 828: unsigned char temp_sta = 0x00;
	clrf	((c:GetTimerCounter@temp_sta)),c
	line	834
;CoilDet-V0.0.C: 834: TMR3ON = 0;
	bcf	c:(32136/8),(32136)&7	;volatile
	line	836
;CoilDet-V0.0.C: 836: TMR3H = 0xff;
	setf	((c:4019)),c	;volatile
	line	837
	
l2637:
;CoilDet-V0.0.C: 837: TMR3L = 0xf5;
	movlw	low(0F5h)
	movwf	((c:4018)),c	;volatile
	line	840
	
l2639:
;CoilDet-V0.0.C: 840: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	842
	
l2641:
;CoilDet-V0.0.C: 842: TMR0H = 0;
	clrf	((c:4055)),c	;volatile
	line	843
	
l2643:
;CoilDet-V0.0.C: 843: TMR0L = 0;
	clrf	((c:4054)),c	;volatile
	line	846
	
l2645:
;CoilDet-V0.0.C: 846: TMR3IE = 1;
	bsf	c:(32001/8),(32001)&7	;volatile
	line	848
	
l2647:
;CoilDet-V0.0.C: 848: SSPIE = 0;
	bcf	c:(31979/8),(31979)&7	;volatile
	line	850
	
l2649:
;CoilDet-V0.0.C: 850: time3_int = 0;
	movlb	(_time3_int/8) >> 8
	bcf	(_time3_int/8),c,(_time3_int)&7
	line	852
	
l2651:
;CoilDet-V0.0.C: 852: TMR3ON = 1;
	bsf	c:(32136/8),(32136)&7	;volatile
	line	862
;CoilDet-V0.0.C: 854: {
	
l645:
	line	853
	movlb	(_time3_int/8) >> 8
	btfss	(_time3_int/8),c,(_time3_int)&7
	goto	u1731
	goto	u1730
u1731:
	goto	l645
u1730:
	
l647:
	line	864
;CoilDet-V0.0.C: 862: }
;CoilDet-V0.0.C: 864: time3_int = 0;
	movlb	(_time3_int/8) >> 8
	bcf	(_time3_int/8),c,(_time3_int)&7
	line	867
;CoilDet-V0.0.C: 867: TMR0H = 0;
	clrf	((c:4055)),c	;volatile
	line	868
;CoilDet-V0.0.C: 868: TMR0L = 0;
	clrf	((c:4054)),c	;volatile
	line	872
;CoilDet-V0.0.C: 872: TMR3ON = 0;
	bcf	c:(32136/8),(32136)&7	;volatile
	line	874
	
l2653:
;CoilDet-V0.0.C: 874: TMR3H = det_pluse_counter_h[ch];
	movf	((c:GetTimerCounter@ch)),c,w
	movlb	0	; () banked
	addlw	low(_det_pluse_counter_h)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:4019)),c	;volatile
	line	875
;CoilDet-V0.0.C: 875: TMR3L = det_pluse_counter_l[ch];
	movf	((c:GetTimerCounter@ch)),c,w
	addlw	low(_det_pluse_counter_l)
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:4018)),c	;volatile
	line	877
	
l2655:; BSR set to: 0

;CoilDet-V0.0.C: 877: time3_int = 0;
	movlb	(_time3_int/8) >> 8
	bcf	(_time3_int/8),c,(_time3_int)&7
	line	879
	
l2657:
;CoilDet-V0.0.C: 879: TMR3ON = 1;
	bsf	c:(32136/8),(32136)&7	;volatile
	line	881
	
l2659:
;CoilDet-V0.0.C: 881: TMR0ON = 1;
	bsf	c:(32431/8),(32431)&7	;volatile
	line	891
;CoilDet-V0.0.C: 883: {
	
l648:
	line	882
	movlb	(_time3_int/8) >> 8
	btfss	(_time3_int/8),c,(_time3_int)&7
	goto	u1741
	goto	u1740
u1741:
	goto	l648
u1740:
	
l650:
	line	893
;CoilDet-V0.0.C: 891: }
;CoilDet-V0.0.C: 893: time3_int = 0;
	movlb	(_time3_int/8) >> 8
	bcf	(_time3_int/8),c,(_time3_int)&7
	line	896
;CoilDet-V0.0.C: 896: TMR3IE = 0;
	bcf	c:(32001/8),(32001)&7	;volatile
	line	898
;CoilDet-V0.0.C: 898: SSPIE = 1;
	bsf	c:(31979/8),(31979)&7	;volatile
	line	899
	
l2661:
;CoilDet-V0.0.C: 899: time_val = (TMR0H <<8)|TMR0L;
	movf	((c:4054)),c,w	;volatile
	movff	(c:4055),??_GetTimerCounter+0+0	;volatile
	clrf	(??_GetTimerCounter+0+0+1)&0ffh,c
	movff	??_GetTimerCounter+0+0,??_GetTimerCounter+0+1
	clrf	(??_GetTimerCounter+0+0),c
	iorwf	(??_GetTimerCounter+0+0),c,w
	
	movwf	((c:GetTimerCounter@time_val)),c
	movf	(??_GetTimerCounter+0+1),c,w
	movwf	1+((c:GetTimerCounter@time_val)),c
	line	903
	
l651:
	line	904
;CoilDet-V0.0.C: 903: }
;CoilDet-V0.0.C: 904: return time_val;
	movff	(c:GetTimerCounter@time_val),(c:?_GetTimerCounter)
	movff	(c:GetTimerCounter@time_val+1),(c:?_GetTimerCounter+1)
	line	905
	
l652:
	return
	opt stack 0
GLOBAL	__end_of_GetTimerCounter
	__end_of_GetTimerCounter:
	signat	_GetTimerCounter,4218
	global	_StartCalc

;; *************** function _StartCalc *****************
;; Defined at:
;;		line 1126 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1    2[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/F
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text10,class=CODE,space=0,reloc=2
global __ptext10
__ptext10:
psect	text10
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1126
	global	__size_of_StartCalc
	__size_of_StartCalc	equ	__end_of_StartCalc-_StartCalc
	
_StartCalc:
	opt	stack 28
	line	1127
	
l2831:
;CoilDet-V0.0.C: 1127: unsigned char i = 0x00;
	clrf	((c:StartCalc@i)),c
	line	1129
;CoilDet-V0.0.C: 1129: for(i=0;i<8;i++)
	clrf	((c:StartCalc@i)),c
	line	1131
	
l2837:
;CoilDet-V0.0.C: 1130: {
;CoilDet-V0.0.C: 1131: if(det_enable & (0x01<<i))
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2114
u2115:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2114:
	decfsz	(??_StartCalc+0+0),c
	goto	u2115
	movf	((??_StartCalc+1+0)),c,w
	andwf	((c:_det_enable)),c,w
	iorlw	0
	btfsc	status,2
	goto	u2121
	goto	u2120
u2121:
	goto	l2855
u2120:
	line	1133
	
l2839:
;CoilDet-V0.0.C: 1132: {
;CoilDet-V0.0.C: 1133: if((det_result[0] & (0x01<<i)) && (det_result[1] & (0x01<<i)) &&(det_result[2] & (0x01<<i)))
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2134
u2135:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2134:
	decfsz	(??_StartCalc+0+0),c
	goto	u2135
	movf	((??_StartCalc+1+0)),c,w
	andwf	((c:_det_result)),c,w
	iorlw	0
	btfsc	status,2
	goto	u2141
	goto	u2140
u2141:
	goto	l2847
u2140:
	
l2841:
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2154
u2155:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2154:
	decfsz	(??_StartCalc+0+0),c
	goto	u2155
	movf	((??_StartCalc+1+0)),c,w
	andwf	(0+((c:_det_result)+01h)),c,w
	iorlw	0
	btfsc	status,2
	goto	u2161
	goto	u2160
u2161:
	goto	l2847
u2160:
	
l2843:
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2174
u2175:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2174:
	decfsz	(??_StartCalc+0+0),c
	goto	u2175
	movf	((??_StartCalc+1+0)),c,w
	andwf	(0+((c:_det_result)+02h)),c,w
	iorlw	0
	btfsc	status,2
	goto	u2181
	goto	u2180
u2181:
	goto	l2847
u2180:
	line	1135
	
l2845:
;CoilDet-V0.0.C: 1134: {
;CoilDet-V0.0.C: 1135: det_result_output |= (0x01<<i);
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2194
u2195:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2194:
	decfsz	(??_StartCalc+0+0),c
	goto	u2195
	movf	((??_StartCalc+1+0)),c,w
	iorwf	((c:_det_result_output)),c
	line	1137
;CoilDet-V0.0.C: 1137: }
	goto	l2855
	line	1138
	
l2847:
;CoilDet-V0.0.C: 1138: else if((!(det_result[0] & (0x01<<i))) && (!(det_result[1] & (0x01<<i))) &&(!(det_result[2] & (0x01<<i))))
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2204
u2205:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2204:
	decfsz	(??_StartCalc+0+0),c
	goto	u2205
	movf	((??_StartCalc+1+0)),c,w
	andwf	((c:_det_result)),c,w
	iorlw	0
	btfss	status,2
	goto	u2211
	goto	u2210
u2211:
	goto	l726
u2210:
	
l2849:
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2224
u2225:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2224:
	decfsz	(??_StartCalc+0+0),c
	goto	u2225
	movf	((??_StartCalc+1+0)),c,w
	andwf	(0+((c:_det_result)+01h)),c,w
	iorlw	0
	btfss	status,2
	goto	u2231
	goto	u2230
u2231:
	goto	l726
u2230:
	
l2851:
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2244
u2245:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2244:
	decfsz	(??_StartCalc+0+0),c
	goto	u2245
	movf	((??_StartCalc+1+0)),c,w
	andwf	(0+((c:_det_result)+02h)),c,w
	iorlw	0
	btfss	status,2
	goto	u2251
	goto	u2250
u2251:
	goto	l726
u2250:
	line	1140
	
l2853:
;CoilDet-V0.0.C: 1139: {
;CoilDet-V0.0.C: 1140: det_result_output &= (~(0x01<<i));
	movff	(c:StartCalc@i),??_StartCalc+0+0
	movlw	(01h)&0ffh
	movwf	(??_StartCalc+1+0)&0ffh,c
	incf	(??_StartCalc+0+0),c
	goto	u2264
u2265:
	bcf	status,0
	rlcf	((??_StartCalc+1+0)),c
u2264:
	decfsz	(??_StartCalc+0+0),c
	goto	u2265
	movf	((??_StartCalc+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_det_result_output)),c
	line	1142
;CoilDet-V0.0.C: 1142: }
	goto	l2855
	line	1143
	
l726:
	line	1145
;CoilDet-V0.0.C: 1143: else
;CoilDet-V0.0.C: 1144: {
;CoilDet-V0.0.C: 1145: det_result[2] = det_result[1];
	movff	0+((c:_det_result)+01h),0+((c:_det_result)+02h)
	line	1146
;CoilDet-V0.0.C: 1146: det_result[1] = det_result[0];
	movff	(c:_det_result),0+((c:_det_result)+01h)
	line	1129
	
l2855:
	incf	((c:StartCalc@i)),c
	
l2857:
	movlw	(08h-1)
	cpfsgt	((c:StartCalc@i)),c
	goto	u2271
	goto	u2270
u2271:
	goto	l2837
u2270:
	
l722:
	line	1152
;CoilDet-V0.0.C: 1147: }
;CoilDet-V0.0.C: 1149: }
;CoilDet-V0.0.C: 1151: }
;CoilDet-V0.0.C: 1152: RC0 = !(det_result_output & 0X01);
	
	btfss	((c:_det_result_output)),c,(0)&7
	goto	u2281
	goto	u2280
u2281:
	bsf	c:(31760/8),(31760)&7	;volatile
	goto	u2295
u2280:
	bcf	c:(31760/8),(31760)&7	;volatile
u2295:
	line	1153
;CoilDet-V0.0.C: 1153: RC1 = !(det_result_output & 0X02);
	
	btfss	((c:_det_result_output)),c,(1)&7
	goto	u2301
	goto	u2300
u2301:
	bsf	c:(31761/8),(31761)&7	;volatile
	goto	u2315
u2300:
	bcf	c:(31761/8),(31761)&7	;volatile
u2315:
	line	1154
;CoilDet-V0.0.C: 1154: RC2 = !(det_result_output & 0X04);
	
	btfss	((c:_det_result_output)),c,(2)&7
	goto	u2321
	goto	u2320
u2321:
	bsf	c:(31762/8),(31762)&7	;volatile
	goto	u2335
u2320:
	bcf	c:(31762/8),(31762)&7	;volatile
u2335:
	line	1155
;CoilDet-V0.0.C: 1155: RC6 = !(det_result_output & 0X08);
	
	btfss	((c:_det_result_output)),c,(3)&7
	goto	u2341
	goto	u2340
u2341:
	bsf	c:(31766/8),(31766)&7	;volatile
	goto	u2355
u2340:
	bcf	c:(31766/8),(31766)&7	;volatile
u2355:
	line	1156
;CoilDet-V0.0.C: 1156: RC7 = !(det_result_output & 0X10);
	
	btfss	((c:_det_result_output)),c,(4)&7
	goto	u2361
	goto	u2360
u2361:
	bsf	c:(31767/8),(31767)&7	;volatile
	goto	u2375
u2360:
	bcf	c:(31767/8),(31767)&7	;volatile
u2375:
	line	1157
;CoilDet-V0.0.C: 1157: RA1 = !(det_result_output & 0X20);
	
	btfss	((c:_det_result_output)),c,(5)&7
	goto	u2381
	goto	u2380
u2381:
	bsf	c:(31745/8),(31745)&7	;volatile
	goto	u2395
u2380:
	bcf	c:(31745/8),(31745)&7	;volatile
u2395:
	line	1158
;CoilDet-V0.0.C: 1158: RA2 = !(det_result_output & 0X40);
	
	btfss	((c:_det_result_output)),c,(6)&7
	goto	u2401
	goto	u2400
u2401:
	bsf	c:(31746/8),(31746)&7	;volatile
	goto	u2415
u2400:
	bcf	c:(31746/8),(31746)&7	;volatile
u2415:
	line	1159
;CoilDet-V0.0.C: 1159: RA3 = !(det_result_output & 0X80);
	
	btfss	((c:_det_result_output)),c,(7)&7
	goto	u2421
	goto	u2420
u2421:
	bsf	c:(31747/8),(31747)&7	;volatile
	goto	u2435
u2420:
	bcf	c:(31747/8),(31747)&7	;volatile
u2435:
	line	1161
	
l728:
	return
	opt stack 0
GLOBAL	__end_of_StartCalc
	__end_of_StartCalc:
	signat	_StartCalc,88
	global	_DTOperation

;; *************** function _DTOperation *****************
;; Defined at:
;;		line 1427 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dt_dat          7   17[COMRAM] unsigned char [7]
;;  i               1   24[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:        13       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_DTRecv
;;		_TransportDataProcess
;;		_DTSend
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text11,class=CODE,space=0,reloc=2
global __ptext11
__ptext11:
psect	text11
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1427
	global	__size_of_DTOperation
	__size_of_DTOperation	equ	__end_of_DTOperation-_DTOperation
	
_DTOperation:
	opt	stack 23
	line	1428
	
l2941:
;CoilDet-V0.0.C: 1428: unsigned char dt_dat[7]={0x00,0x00,0x00,0x00,0x00,0x00,0x00};
	lfsr	2,(c:DTOperation@dt_dat)
	movlw	7
u2441:
	clrf	postinc2
	decfsz	wreg
	goto	u2441
	line	1430
	
l2943:
	line	1439
	
l2945:
;CoilDet-V0.0.C: 1432: {
;CoilDet-V0.0.C: 1434: {
;CoilDet-V0.0.C: 1439: DTRecv(7,dt_dat);
	movlw	low((c:DTOperation@dt_dat))
	movwf	((c:?_DTRecv)),c
	movlw	high((c:DTOperation@dt_dat))
	movwf	((c:?_DTRecv+1)),c
	movlw	0fh
	movwf	((c:?_DTRecv+1)),c
	movlw	__accesstop-1
	cpfsgt	((c:?_DTRecv)),c
	clrf	((c:?_DTRecv+1)),c
	movlw	(07h)&0ffh
	
	call	_DTRecv
	line	1450
	
l2947:
;CoilDet-V0.0.C: 1450: DT_sync_buf[0] = dt_dat[0];
	movff	(c:DTOperation@dt_dat),(c:_DT_sync_buf)
	line	1451
	
l2949:
;CoilDet-V0.0.C: 1451: DT_sync_buf[1] = dt_dat[1];
	movff	0+((c:DTOperation@dt_dat)+01h),0+((c:_DT_sync_buf)+01h)
	line	1452
	
l2951:
;CoilDet-V0.0.C: 1452: DT_sync_buf[2] = dt_dat[2];
	movff	0+((c:DTOperation@dt_dat)+02h),0+((c:_DT_sync_buf)+02h)
	line	1453
	
l2953:
;CoilDet-V0.0.C: 1453: DT_sync_buf[3] = dt_dat[3];
	movff	0+((c:DTOperation@dt_dat)+03h),0+((c:_DT_sync_buf)+03h)
	line	1454
	
l2955:
;CoilDet-V0.0.C: 1454: DT_sync_buf[4] = dt_dat[4];
	movff	0+((c:DTOperation@dt_dat)+04h),0+((c:_DT_sync_buf)+04h)
	line	1458
	
l2957:
;CoilDet-V0.0.C: 1458: if((0X11==DT_sync_buf[0])&&(DT_sync_buf[1]==0x22)&&(DT_sync_buf[2]==0x33)&&(DT_sync_buf[3]==0x44)&&(DT_sync_buf[4]==0x55))
	movf	((c:_DT_sync_buf)),c,w
	xorlw	17

	btfss	status,2
	goto	u2451
	goto	u2450
u2451:
	goto	l783
u2450:
	
l2959:
	movf	(0+((c:_DT_sync_buf)+01h)),c,w
	xorlw	34

	btfss	status,2
	goto	u2461
	goto	u2460
u2461:
	goto	l783
u2460:
	
l2961:
	movf	(0+((c:_DT_sync_buf)+02h)),c,w
	xorlw	51

	btfss	status,2
	goto	u2471
	goto	u2470
u2471:
	goto	l783
u2470:
	
l2963:
	movf	(0+((c:_DT_sync_buf)+03h)),c,w
	xorlw	68

	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l783
u2480:
	
l2965:
	movf	(0+((c:_DT_sync_buf)+04h)),c,w
	xorlw	85

	btfss	status,2
	goto	u2491
	goto	u2490
u2491:
	goto	l783
u2490:
	line	1461
	
l2967:
;CoilDet-V0.0.C: 1460: {
;CoilDet-V0.0.C: 1461: DTSync=1;
	movlb	(_DTSync/8) >> 8
	bsf	(_DTSync/8),c,(_DTSync)&7
	line	1463
;CoilDet-V0.0.C: 1463: }
	goto	l784
	line	1464
	
l783:
	line	1466
;CoilDet-V0.0.C: 1464: else
;CoilDet-V0.0.C: 1465: {
;CoilDet-V0.0.C: 1466: DTSync=0;
	movlb	(_DTSync/8) >> 8
	bcf	(_DTSync/8),c,(_DTSync)&7
	line	1468
	
l784:
	line	1472
;CoilDet-V0.0.C: 1468: }
;CoilDet-V0.0.C: 1472: DT_command=dt_dat[5];
	movff	0+((c:DTOperation@dt_dat)+05h),(c:_DT_command)
	line	1473
;CoilDet-V0.0.C: 1473: DT_data_counter=dt_dat[6];
	movff	0+((c:DTOperation@dt_dat)+06h),(c:_DT_data_counter)
	line	1474
	
l2969:
;CoilDet-V0.0.C: 1474: DTRecv(DT_data_counter,DT_data);
	movlb	0	; () banked
	movlw	high(_DT_data)
	movwf	((c:?_DTRecv+1)),c
	movlw	low(_DT_data)
	movwf	((c:?_DTRecv)),c
	movf	((c:_DT_data_counter)),c,w
	
	call	_DTRecv
	line	1477
;CoilDet-V0.0.C: 1477: switch (DT_command)
	goto	l2983
	line	1481
	
l2971:; BSR set to: 0

;CoilDet-V0.0.C: 1481: DT_SDdata_counter=1;
	movlw	low(01h)
	movwf	((c:_DT_SDdata_counter)),c
	line	1482
;CoilDet-V0.0.C: 1482: break;
	goto	l787
	line	1485
	
l2973:; BSR set to: 0

;CoilDet-V0.0.C: 1485: DT_SDdata_counter=4;
	movlw	low(04h)
	movwf	((c:_DT_SDdata_counter)),c
	line	1486
;CoilDet-V0.0.C: 1486: break;
	goto	l787
	line	1493
	
l2977:; BSR set to: 0

;CoilDet-V0.0.C: 1493: DT_SDdata_counter=2;
	movlw	low(02h)
	movwf	((c:_DT_SDdata_counter)),c
	line	1494
;CoilDet-V0.0.C: 1494: break;
	goto	l787
	line	1497
	
l2979:; BSR set to: 0

;CoilDet-V0.0.C: 1497: DT_SDdata_counter=16;
	movlw	low(010h)
	movwf	((c:_DT_SDdata_counter)),c
	line	1498
;CoilDet-V0.0.C: 1498: break;
	goto	l787
	line	1499
;CoilDet-V0.0.C: 1499: case 0x05:
	
l792:; BSR set to: 0

	line	1501
;CoilDet-V0.0.C: 1501: DT_SDdata_counter=0;
	clrf	((c:_DT_SDdata_counter)),c
	line	1502
;CoilDet-V0.0.C: 1502: break;
	goto	l787
	line	1477
	
l2983:; BSR set to: 0

	movf	((c:_DT_command)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 170
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2971
	xorlw	1^0	; case 1
	skipnz
	goto	l2973
	xorlw	2^1	; case 2
	skipnz
	goto	l2973
	xorlw	3^2	; case 3
	skipnz
	goto	l2977
	xorlw	4^3	; case 4
	skipnz
	goto	l2979
	xorlw	5^4	; case 5
	skipnz
	goto	l792
	xorlw	6^5	; case 6
	skipnz
	goto	l792
	xorlw	7^6	; case 7
	skipnz
	goto	l792
	xorlw	170^7	; case 170
	skipnz
	goto	l787
	goto	l792

	line	1519
	
l787:; BSR set to: 0

	line	1521
;CoilDet-V0.0.C: 1521: if(DTSync)
	movlb	(_DTSync/8) >> 8
	btfss	(_DTSync/8),c,(_DTSync)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l797
u2500:
	line	1524
	
l2985:
;CoilDet-V0.0.C: 1522: {
;CoilDet-V0.0.C: 1524: TransportDataProcess();
	call	_TransportDataProcess	;wreg free
	line	1528
;CoilDet-V0.0.C: 1528: }
	goto	l2995
	line	1529
	
l797:
	line	1531
;CoilDet-V0.0.C: 1529: else
;CoilDet-V0.0.C: 1530: {
;CoilDet-V0.0.C: 1531: for(i=0;i<DT_SDdata_counter+2;i++)
	clrf	((c:DTOperation@i)),c
	goto	l2991
	line	1533
	
l2987:
;CoilDet-V0.0.C: 1532: {
;CoilDet-V0.0.C: 1533: DT_data1[i]=0xff;
	movf	((c:DTOperation@i)),c,w
	movlb	0	; () banked
	addlw	low(_DT_data1)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0FFh)
	movwf	indf2
	line	1531
	
l2989:; BSR set to: 0

	incf	((c:DTOperation@i)),c
	
l2991:
	movff	(c:_DT_SDdata_counter),??_DTOperation+0+0
	clrf	(??_DTOperation+0+0+1)&0ffh,c
	movlw	02h
	addwf	(??_DTOperation+0+0),c
	movlw	0
	addwfc	(??_DTOperation+0+1),c
	movff	(c:DTOperation@i),??_DTOperation+2+0
	clrf	(??_DTOperation+2+0+1)&0ffh,c
	movf	(??_DTOperation+2+1),c,w
	xorlw	80h
	movwf	(??_DTOperation+4+0)&0ffh,c
	movf	(??_DTOperation+0+0),c,w
	subwf	(??_DTOperation+2+0),c,w
	movf	(??_DTOperation+0+1),c,w
	xorlw	80h
	subwfb	(??_DTOperation+4+0)&0ffh,c,w
	btfss	status,0
	goto	u2511
	goto	u2510
u2511:
	goto	l2987
u2510:
	line	1535
	
l2993:
;CoilDet-V0.0.C: 1534: }
;CoilDet-V0.0.C: 1535: DTSend(DT_SDdata_counter+2,DT_data1);
	movlb	0	; () banked
	movlw	low(_DT_data1)
	movwf	((c:?_DTSend)),c
	movf	((c:_DT_SDdata_counter)),c,w
	addlw	low(02h)
	
	call	_DTSend
	line	1579
	
l2995:; BSR set to: 0

;CoilDet-V0.0.C: 1540: }
;CoilDet-V0.0.C: 1579: TRISC |= 0x08;
	bsf	(0+(3/8)+(c:3988)),c,(3)&7	;volatile
	line	1580
	
l2997:; BSR set to: 0

;CoilDet-V0.0.C: 1580: TRISC |= 0x10;
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	1581
	
l2999:; BSR set to: 0

;CoilDet-V0.0.C: 1581: TRISC |= 0x20;
	bsf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	1582
	
l3001:; BSR set to: 0

;CoilDet-V0.0.C: 1582: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	1583
	
l3003:; BSR set to: 0

;CoilDet-V0.0.C: 1583: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1584
	
l3005:; BSR set to: 0

;CoilDet-V0.0.C: 1584: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	1594
	
l802:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_DTOperation
	__end_of_DTOperation:
	signat	_DTOperation,88
	global	_DTRecv

;; *************** function _DTRecv *****************
;; Defined at:
;;		line 1081 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  d_size          1    wreg     unsigned char 
;;  dat             2    0[COMRAM] PTR unsigned char 
;;		 -> DTOperation@dt_dat(7), DT_data(18), 
;; Auto vars:     Size  Location     Type
;;  d_size          1    5[COMRAM] unsigned char 
;;  j               1    7[COMRAM] unsigned char 
;;  i               1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/F
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DTOperation
;; This function uses a non-reentrant model
;;
psect	text12,class=CODE,space=0,reloc=2
global __ptext12
__ptext12:
psect	text12
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1081
	global	__size_of_DTRecv
	__size_of_DTRecv	equ	__end_of_DTRecv-_DTRecv
	
_DTRecv:; BSR set to: 0

	opt	stack 27
;DTRecv@d_size stored from wreg
	movff	wreg,(c:DTRecv@d_size)
	line	1082
	
l2789:
	clrf	((c:DTRecv@j)),c
	line	1084
	
l2791:
;CoilDet-V0.0.C: 1084: TRISC |= 0x08;
	bsf	(0+(3/8)+(c:3988)),c,(3)&7	;volatile
	line	1085
;CoilDet-V0.0.C: 1085: TRISC |= 0x10;
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	1086
;CoilDet-V0.0.C: 1086: TRISC &= 0xDF;
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	1088
	
l2793:
;CoilDet-V0.0.C: 1088: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	1089
	
l2795:
;CoilDet-V0.0.C: 1089: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1090
	
l2797:
;CoilDet-V0.0.C: 1090: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	1091
	
l2799:
;CoilDet-V0.0.C: 1091: *dat = 0x00;
	movff	(c:DTRecv@dat),fsr2l
	movff	(c:DTRecv@dat+1),fsr2h
	movlw	low(0)
	movwf	indf2
	line	1092
	
l2801:
;CoilDet-V0.0.C: 1092: for(i = 0 ;i<d_size;i++)
	clrf	((c:DTRecv@i)),c
	goto	l2821
	line	1093
	
l707:
	line	1094
;CoilDet-V0.0.C: 1093: {
;CoilDet-V0.0.C: 1094: for(j=0;j<8;j++)
	clrf	((c:DTRecv@j)),c
	line	1096
	
l710:
	btfsc	c:(31763/8),(31763)&7	;volatile
	goto	u2051
	goto	u2050
u2051:
	goto	l710
u2050:
	
l712:
	line	1098
;CoilDet-V0.0.C: 1098: if(RC4)
	btfss	c:(31764/8),(31764)&7	;volatile
	goto	u2061
	goto	u2060
u2061:
	goto	l2809
u2060:
	line	1100
	
l2807:
;CoilDet-V0.0.C: 1099: {
;CoilDet-V0.0.C: 1100: *dat |= (0x80>>j);
	movff	(c:DTRecv@j),??_DTRecv+0+0
	movlw	080h
	movwf	(??_DTRecv+1+0)&0ffh,c
	clrf	(??_DTRecv+1+0+1)&0ffh,c
	incf	(??_DTRecv+0+0),c
	goto	u2074
u2075:
	rlcf	(??_DTRecv+1+1),c,w
	rrcf	(??_DTRecv+1+1),c
	rrcf	(??_DTRecv+1+0),c
u2074:
	decfsz	(??_DTRecv+0+0),c
	goto	u2075
	movff	(c:DTRecv@dat),fsr2l
	movff	(c:DTRecv@dat+1),fsr2h
	movf	(??_DTRecv+1+0),c,w
	iorwf	indf2
	line	1102
	
l2809:
;CoilDet-V0.0.C: 1101: }
;CoilDet-V0.0.C: 1102: RC5 = 0;
	bcf	c:(31765/8),(31765)&7	;volatile
	line	1103
;CoilDet-V0.0.C: 1103: while(!RC3){;}
	
l714:
	btfss	c:(31763/8),(31763)&7	;volatile
	goto	u2081
	goto	u2080
u2081:
	goto	l714
u2080:
	
l716:
	line	1104
;CoilDet-V0.0.C: 1104: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1094
	
l2811:
	incf	((c:DTRecv@j)),c
	
l2813:
	movlw	(08h-1)
	cpfsgt	((c:DTRecv@j)),c
	goto	u2091
	goto	u2090
u2091:
	goto	l710
u2090:
	line	1107
	
l2815:
;CoilDet-V0.0.C: 1105: }
;CoilDet-V0.0.C: 1107: dat++;
	infsnz	((c:DTRecv@dat)),c
	incf	((c:DTRecv@dat+1)),c
	line	1108
	
l2817:
;CoilDet-V0.0.C: 1108: *dat = 0x00;
	movff	(c:DTRecv@dat),fsr2l
	movff	(c:DTRecv@dat+1),fsr2h
	movlw	low(0)
	movwf	indf2
	line	1092
	
l2819:
	incf	((c:DTRecv@i)),c
	
l2821:
	movf	((c:DTRecv@d_size)),c,w
	subwf	((c:DTRecv@i)),c,w
	btfss	status,0
	goto	u2101
	goto	u2100
u2101:
	goto	l707
u2100:
	line	1114
	
l2823:
;CoilDet-V0.0.C: 1109: }
;CoilDet-V0.0.C: 1114: TRISC |= 0x08;
	bsf	(0+(3/8)+(c:3988)),c,(3)&7	;volatile
	line	1115
;CoilDet-V0.0.C: 1115: TRISC |= 0x10;
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	1116
;CoilDet-V0.0.C: 1116: TRISC &= 0xDF;
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	1117
	
l2825:
;CoilDet-V0.0.C: 1117: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	1118
	
l2827:
;CoilDet-V0.0.C: 1118: RC5 =1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1119
	
l2829:
;CoilDet-V0.0.C: 1119: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	1121
	
l718:
	return
	opt stack 0
GLOBAL	__end_of_DTRecv
	__end_of_DTRecv:
	signat	_DTRecv,8312
	global	_TransportDataProcess

;; *************** function _TransportDataProcess *****************
;; Defined at:
;;		line 1367 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_GetCoilState
;;		_ReadSensLv
;;		_ReadFrequency
;;		_ReadSensTable
;;		_DTWriteSensLv
;;		_DTWriteOSCSet
;;		_DTWriteSens
;;		_DTRest
;;		_DTSend
;;		_delayms
;; This function is called by:
;;		_DTOperation
;; This function uses a non-reentrant model
;;
psect	text13,class=CODE,space=0,reloc=2
global __ptext13
__ptext13:
psect	text13
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1367
	global	__size_of_TransportDataProcess
	__size_of_TransportDataProcess	equ	__end_of_TransportDataProcess-_TransportDataProcess
	
_TransportDataProcess:
	opt	stack 23
	line	1368
	
l2913:
;CoilDet-V0.0.C: 1368: DT_data1[0]=DT_command;
	movff	(c:_DT_command),(_DT_data1)
	line	1369
;CoilDet-V0.0.C: 1369: DT_data1[1]=DT_SDdata_counter;
	movff	(c:_DT_SDdata_counter),0+(_DT_data1+01h)
	line	1370
;CoilDet-V0.0.C: 1370: switch (DT_command)
	goto	l2935
	line	1373
	
l2915:
;CoilDet-V0.0.C: 1373: DT_data1[2]=det_result_output&DT_data[0];
	movf	((c:_det_result_output)),c,w
	movlb	0	; () banked
	andwf	((_DT_data))&0ffh,w
	movwf	(0+(_DT_data1+02h))&0ffh
	line	1374
;CoilDet-V0.0.C: 1374: break;
	goto	l2937
	line	1376
	
l2917:
;CoilDet-V0.0.C: 1376: GetCoilState();
	call	_GetCoilState	;wreg free
	line	1377
;CoilDet-V0.0.C: 1377: break;
	goto	l2937
	line	1379
	
l2919:
;CoilDet-V0.0.C: 1379: ReadSensLv(DT_data1+2);
	movlb	0	; () banked
	movlw	high(_DT_data1+02h)
	movwf	((c:?_ReadSensLv+1)),c
	movlw	low(_DT_data1+02h)
	movwf	((c:?_ReadSensLv)),c
	call	_ReadSensLv	;wreg free
	line	1380
;CoilDet-V0.0.C: 1380: break;
	goto	l2937
	line	1382
	
l2921:
;CoilDet-V0.0.C: 1382: ReadFrequency(DT_data1+2);
	movlb	0	; () banked
	movlw	(_DT_data1+02h)&0ffh
	
	call	_ReadFrequency
	line	1383
;CoilDet-V0.0.C: 1383: break;
	goto	l2937
	line	1385
	
l2923:
;CoilDet-V0.0.C: 1385: ReadSensTable(DT_data1+2);
	movlb	0	; () banked
	movlw	(_DT_data1+02h)&0ffh
	
	call	_ReadSensTable
	line	1386
;CoilDet-V0.0.C: 1386: break;
	goto	l2937
	line	1389
	
l2925:
;CoilDet-V0.0.C: 1389: DTWriteSensLv(DT_data);
	movlb	0	; () banked
	movlw	(_DT_data)&0ffh
	
	call	_DTWriteSensLv
	line	1390
;CoilDet-V0.0.C: 1390: break;
	goto	l2937
	line	1392
	
l2927:
;CoilDet-V0.0.C: 1392: DTWriteOSCSet(DT_data);
	movlb	0	; () banked
	movlw	(_DT_data)&0ffh
	
	call	_DTWriteOSCSet
	line	1393
;CoilDet-V0.0.C: 1393: break;
	goto	l2937
	line	1395
	
l2929:
;CoilDet-V0.0.C: 1395: DTWriteSens(DT_data);
	movlb	0	; () banked
	movlw	(_DT_data)&0ffh
	
	call	_DTWriteSens
	line	1396
;CoilDet-V0.0.C: 1396: break;
	goto	l2937
	line	1398
	
l2931:
;CoilDet-V0.0.C: 1398: DTRest();
	call	_DTRest	;wreg free
	line	1399
;CoilDet-V0.0.C: 1399: break;
	goto	l2937
	line	1370
	
l2935:
	movf	((c:_DT_command)),c,w
	; Switch size 1, requested type "space"
; Number of cases is 9, Range of values is 0 to 170
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           28    15 (average)
;	Chosen strategy is simple_byte

	xorlw	0^0	; case 0
	skipnz
	goto	l2915
	xorlw	1^0	; case 1
	skipnz
	goto	l2917
	xorlw	2^1	; case 2
	skipnz
	goto	l2919
	xorlw	3^2	; case 3
	skipnz
	goto	l2921
	xorlw	4^3	; case 4
	skipnz
	goto	l2923
	xorlw	5^4	; case 5
	skipnz
	goto	l2925
	xorlw	6^5	; case 6
	skipnz
	goto	l2927
	xorlw	7^6	; case 7
	skipnz
	goto	l2929
	xorlw	170^7	; case 170
	skipnz
	goto	l2931
	goto	l2937

	line	1416
	
l2937:
;CoilDet-V0.0.C: 1416: DTSend(DT_SDdata_counter+2,DT_data1);
	movlb	0	; () banked
	movlw	low(_DT_data1)
	movwf	((c:?_DTSend)),c
	movf	((c:_DT_SDdata_counter)),c,w
	addlw	low(02h)
	
	call	_DTSend
	line	1418
	
l2939:; BSR set to: 0

;CoilDet-V0.0.C: 1418: delayms(10);
	movlw	high(0Ah)
	movwf	((c:?_delayms+1)),c
	movlw	low(0Ah)
	movwf	((c:?_delayms)),c
	call	_delayms	;wreg free
	line	1420
	
l776:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_TransportDataProcess
	__end_of_TransportDataProcess:
	signat	_TransportDataProcess,88
	global	_delayms

;; *************** function _delayms *****************
;; Defined at:
;;		line 120 in file "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
;; Parameters:    Size  Location     Type
;;  ms              2    4[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    6[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delayus
;; This function is called by:
;;		_TransportDataProcess
;;		_main
;; This function uses a non-reentrant model
;;
psect	text14,class=CODE,space=0,reloc=2
global __ptext14
__ptext14:
psect	text14
	file	"E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
	line	120
	global	__size_of_delayms
	__size_of_delayms	equ	__end_of_delayms-_delayms
	
_delayms:; BSR set to: 0

	opt	stack 25
	line	123
	
l2327:
;mcu.h: 121: unsigned int i;
;mcu.h: 123: for(i=0;i<ms;i++)
	clrf	((c:delayms@i)),c
	clrf	((c:delayms@i+1)),c
	goto	l2333
	line	125
	
l2329:
;mcu.h: 124: {
;mcu.h: 125: delayus(997);
	movlw	high(03E5h)
	movwf	((c:?_delayus+1)),c
	movlw	low(03E5h)
	movwf	((c:?_delayus)),c
	call	_delayus	;wreg free
	line	123
	
l2331:
	infsnz	((c:delayms@i)),c
	incf	((c:delayms@i+1)),c
	
l2333:
	movf	((c:delayms@ms)),c,w
	subwf	((c:delayms@i)),c,w
	movf	((c:delayms@ms+1)),c,w
	subwfb	((c:delayms@i+1)),c,w
	btfss	status,0
	goto	u1391
	goto	u1390
u1391:
	goto	l2329
u1390:
	line	128
	
l448:
	return
	opt stack 0
GLOBAL	__end_of_delayms
	__end_of_delayms:
	signat	_delayms,4216
	global	_DTSend

;; *************** function _DTSend *****************
;; Defined at:
;;		line 1035 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  d_size          1    wreg     unsigned char 
;;  dat             1    0[COMRAM] PTR unsigned char 
;;		 -> DT_data1(18), 
;; Auto vars:     Size  Location     Type
;;  d_size          1    5[COMRAM] unsigned char 
;;  j               1    7[COMRAM] unsigned char 
;;  i               1    6[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         8       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TransportDataProcess
;;		_DTOperation
;; This function uses a non-reentrant model
;;
psect	text15,class=CODE,space=0,reloc=2
global __ptext15
__ptext15:
psect	text15
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1035
	global	__size_of_DTSend
	__size_of_DTSend	equ	__end_of_DTSend-_DTSend
	
_DTSend:
	opt	stack 27
;DTSend@d_size stored from wreg
	line	1037
	movff	wreg,(c:DTSend@d_size)
	line	1036
	
l2753:; BSR set to: 0

	line	1037
;CoilDet-V0.0.C: 1037: unsigned char j=0x00;
	clrf	((c:DTSend@j)),c
	line	1039
	
l2755:; BSR set to: 0

;CoilDet-V0.0.C: 1039: TRISC |= 0x08;
	bsf	(0+(3/8)+(c:3988)),c,(3)&7	;volatile
	line	1040
;CoilDet-V0.0.C: 1040: TRISC &= 0xEF;
	bcf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	1041
;CoilDet-V0.0.C: 1041: TRISC &= 0xDF;
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	1043
	
l2757:; BSR set to: 0

;CoilDet-V0.0.C: 1043: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	1044
	
l2759:; BSR set to: 0

;CoilDet-V0.0.C: 1044: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1045
	
l2761:; BSR set to: 0

;CoilDet-V0.0.C: 1045: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	1049
	
l2763:; BSR set to: 0

;CoilDet-V0.0.C: 1049: for(i = 0 ;i<d_size;i++)
	clrf	((c:DTSend@i)),c
	goto	l2779
	line	1050
	
l691:; BSR set to: 0

	line	1051
;CoilDet-V0.0.C: 1050: {
;CoilDet-V0.0.C: 1051: for(j=0;j<8;j++)
	clrf	((c:DTSend@j)),c
	line	1053
	
l694:; BSR set to: 0

	btfsc	c:(31763/8),(31763)&7	;volatile
	goto	u1991
	goto	u1990
u1991:
	goto	l694
u1990:
	line	1054
	
l2769:; BSR set to: 0

;CoilDet-V0.0.C: 1054: if((*dat)&(0x80>>j))
	movf	((c:DTSend@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_DTSend+0+0)&0ffh,c
	movff	(c:DTSend@j),??_DTSend+1+0
	movlw	080h
	movwf	(??_DTSend+2+0)&0ffh,c
	clrf	(??_DTSend+2+0+1)&0ffh,c
	incf	(??_DTSend+1+0),c
	goto	u2004
u2005:
	rlcf	(??_DTSend+2+1),c,w
	rrcf	(??_DTSend+2+1),c
	rrcf	(??_DTSend+2+0),c
u2004:
	decfsz	(??_DTSend+1+0),c
	goto	u2005
	movf	(??_DTSend+2+0),c,w
	andwf	((??_DTSend+0+0)),c,w
	iorlw	0
	btfsc	status,2
	goto	u2011
	goto	u2010
u2011:
	goto	l697
u2010:
	line	1056
	
l2771:; BSR set to: 0

;CoilDet-V0.0.C: 1055: {
;CoilDet-V0.0.C: 1056: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	1057
;CoilDet-V0.0.C: 1057: }
	goto	l698
	line	1058
	
l697:; BSR set to: 0

	line	1060
;CoilDet-V0.0.C: 1058: else
;CoilDet-V0.0.C: 1059: {
;CoilDet-V0.0.C: 1060: RC4 = 0;
	bcf	c:(31764/8),(31764)&7	;volatile
	line	1061
	
l698:; BSR set to: 0

	line	1062
;CoilDet-V0.0.C: 1061: }
;CoilDet-V0.0.C: 1062: RC5 = 0;
	bcf	c:(31765/8),(31765)&7	;volatile
	line	1063
;CoilDet-V0.0.C: 1063: while(!RC3){;}
	
l699:; BSR set to: 0

	btfss	c:(31763/8),(31763)&7	;volatile
	goto	u2021
	goto	u2020
u2021:
	goto	l699
u2020:
	
l701:; BSR set to: 0

	line	1064
;CoilDet-V0.0.C: 1064: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1051
	
l2773:; BSR set to: 0

	incf	((c:DTSend@j)),c
	
l2775:; BSR set to: 0

	movlw	(08h-1)
	cpfsgt	((c:DTSend@j)),c
	goto	u2031
	goto	u2030
u2031:
	goto	l694
u2030:
	line	1066
	
l2777:; BSR set to: 0

;CoilDet-V0.0.C: 1065: }
;CoilDet-V0.0.C: 1066: dat++;
	incf	((c:DTSend@dat)),c
	line	1049
	incf	((c:DTSend@i)),c
	
l2779:; BSR set to: 0

	movf	((c:DTSend@d_size)),c,w
	subwf	((c:DTSend@i)),c,w
	btfss	status,0
	goto	u2041
	goto	u2040
u2041:
	goto	l691
u2040:
	line	1069
	
l2781:; BSR set to: 0

;CoilDet-V0.0.C: 1067: }
;CoilDet-V0.0.C: 1069: TRISC |= 0x08;
	bsf	(0+(3/8)+(c:3988)),c,(3)&7	;volatile
	line	1070
;CoilDet-V0.0.C: 1070: TRISC |= 0x10;
	bsf	(0+(4/8)+(c:3988)),c,(4)&7	;volatile
	line	1071
;CoilDet-V0.0.C: 1071: TRISC &= 0xDF;
	bcf	(0+(5/8)+(c:3988)),c,(5)&7	;volatile
	line	1072
	
l2783:; BSR set to: 0

;CoilDet-V0.0.C: 1072: RC3 = 1;
	bsf	c:(31763/8),(31763)&7	;volatile
	line	1073
	
l2785:; BSR set to: 0

;CoilDet-V0.0.C: 1073: RC5 = 1;
	bsf	c:(31765/8),(31765)&7	;volatile
	line	1074
	
l2787:; BSR set to: 0

;CoilDet-V0.0.C: 1074: RC4 = 1;
	bsf	c:(31764/8),(31764)&7	;volatile
	line	1076
	
l703:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_DTSend
	__end_of_DTSend:
	signat	_DTSend,8312
	global	_ReadFrequency

;; *************** function _ReadFrequency *****************
;; Defined at:
;;		line 1166 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> DT_data1(18), 
;; Auto vars:     Size  Location     Type
;;  dat             1    6[COMRAM] PTR unsigned char 
;;		 -> DT_data1(18), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_EEPROMRead
;; This function is called by:
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text16,class=CODE,space=0,reloc=2
global __ptext16
__ptext16:
psect	text16
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1166
	global	__size_of_ReadFrequency
	__size_of_ReadFrequency	equ	__end_of_ReadFrequency-_ReadFrequency
	
_ReadFrequency:; BSR set to: 0

	opt	stack 25
;ReadFrequency@dat stored from wreg
	line	1168
	movff	wreg,(c:ReadFrequency@dat)
	
l2859:; BSR set to: 0

;CoilDet-V0.0.C: 1168: eeprom_addr = 0x0019;
	movlw	high(019h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(019h)
	movwf	((c:_eeprom_addr)),c
	line	1169
;CoilDet-V0.0.C: 1169: eeprom_num = 2;
	movlw	low(02h)
	movwf	((c:_eeprom_num)),c
	line	1170
	
l2861:; BSR set to: 0

;CoilDet-V0.0.C: 1170: EEPROMRead(&eeprom_addr,&eeprom_num,dat);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMRead)),c
	movff	(c:ReadFrequency@dat),0+((c:?_EEPROMRead)+01h)
	clrf	(1+((c:?_EEPROMRead)+01h)),c
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMRead
	line	1171
	
l731:
	return
	opt stack 0
GLOBAL	__end_of_ReadFrequency
	__end_of_ReadFrequency:
	signat	_ReadFrequency,4216
	global	_DTWriteSensLv

;; *************** function _DTWriteSensLv *****************
;; Defined at:
;;		line 1195 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> DT_data(18), 
;; Auto vars:     Size  Location     Type
;;  dat             1    8[COMRAM] PTR unsigned char 
;;		 -> DT_data(18), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EEPROMWrite
;;		_ReadSensLv
;;		_SetSens
;; This function is called by:
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text17,class=CODE,space=0,reloc=2
global __ptext17
__ptext17:
psect	text17
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1195
	global	__size_of_DTWriteSensLv
	__size_of_DTWriteSensLv	equ	__end_of_DTWriteSensLv-_DTWriteSensLv
	
_DTWriteSensLv:
	opt	stack 24
;DTWriteSensLv@dat stored from wreg
	line	1197
	movff	wreg,(c:DTWriteSensLv@dat)
	
l2871:; BSR set to: 0

;CoilDet-V0.0.C: 1197: eeprom_addr = 0x0005;
	movlw	high(05h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(05h)
	movwf	((c:_eeprom_addr)),c
	line	1198
;CoilDet-V0.0.C: 1198: eeprom_num = 4;
	movlw	low(04h)
	movwf	((c:_eeprom_num)),c
	line	1200
	
l2873:; BSR set to: 0

;CoilDet-V0.0.C: 1200: EEPROMWrite(&eeprom_addr,&eeprom_num,dat);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMWrite)),c
	movff	(c:DTWriteSensLv@dat),0+((c:?_EEPROMWrite)+01h)
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMWrite
	line	1201
	
l2875:
;CoilDet-V0.0.C: 1201: ReadSensLv(det_current_sens_lv);
	movlw	low((c:_det_current_sens_lv))
	movwf	((c:?_ReadSensLv)),c
	movlw	high((c:_det_current_sens_lv))
	movwf	((c:?_ReadSensLv+1)),c
	movlw	0fh
	movwf	((c:?_ReadSensLv+1)),c
	movlw	__accesstop-1
	cpfsgt	((c:?_ReadSensLv)),c
	clrf	((c:?_ReadSensLv+1)),c
	call	_ReadSensLv	;wreg free
	line	1202
	
l2877:
;CoilDet-V0.0.C: 1202: SetSens(det_current_sens_table,det_current_sens_lv);
	movlw	low((c:_det_current_sens_lv))
	movwf	((c:?_SetSens)),c
	movlb	0	; () banked
	movlw	(_det_current_sens_table)&0ffh
	
	call	_SetSens
	line	1208
	
l740:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_DTWriteSensLv
	__end_of_DTWriteSensLv:
	signat	_DTWriteSensLv,4216
	global	_ReadSensLv

;; *************** function _ReadSensLv *****************
;; Defined at:
;;		line 1176 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             2    6[COMRAM] PTR unsigned char 
;;		 -> det_current_sens_lv(4), DT_data1(18), 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_EEPROMRead
;; This function is called by:
;;		_DTWriteSensLv
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text18,class=CODE,space=0,reloc=2
global __ptext18
__ptext18:
psect	text18
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1176
	global	__size_of_ReadSensLv
	__size_of_ReadSensLv	equ	__end_of_ReadSensLv-_ReadSensLv
	
_ReadSensLv:; BSR set to: 0

	opt	stack 24
	line	1178
	
l2863:
;CoilDet-V0.0.C: 1178: eeprom_addr = 0x0005;
	movlw	high(05h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(05h)
	movwf	((c:_eeprom_addr)),c
	line	1179
;CoilDet-V0.0.C: 1179: eeprom_num = 4;
	movlw	low(04h)
	movwf	((c:_eeprom_num)),c
	line	1180
	
l2865:
;CoilDet-V0.0.C: 1180: EEPROMRead(&eeprom_addr,&eeprom_num,dat);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMRead)),c
	movff	(c:ReadSensLv@dat),0+((c:?_EEPROMRead)+01h)
	movff	(c:ReadSensLv@dat+1),1+((c:?_EEPROMRead)+01h)
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMRead
	line	1181
	
l734:
	return
	opt stack 0
GLOBAL	__end_of_ReadSensLv
	__end_of_ReadSensLv:
	signat	_ReadSensLv,4216
	global	_DTWriteSens

;; *************** function _DTWriteSens *****************
;; Defined at:
;;		line 1212 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> DT_data(18), 
;; Auto vars:     Size  Location     Type
;;  dat             1    7[COMRAM] PTR unsigned char 
;;		 -> DT_data(18), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EEPROMWrite
;;		_ReadSensTable
;;		_SetSens
;; This function is called by:
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text19,class=CODE,space=0,reloc=2
global __ptext19
__ptext19:
psect	text19
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1212
	global	__size_of_DTWriteSens
	__size_of_DTWriteSens	equ	__end_of_DTWriteSens-_DTWriteSens
	
_DTWriteSens:
	opt	stack 24
;DTWriteSens@dat stored from wreg
	line	1214
	movff	wreg,(c:DTWriteSens@dat)
	
l2879:; BSR set to: 0

;CoilDet-V0.0.C: 1214: eeprom_addr = 0x0009;
	movlw	high(09h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(09h)
	movwf	((c:_eeprom_addr)),c
	line	1215
;CoilDet-V0.0.C: 1215: eeprom_num = 16;
	movlw	low(010h)
	movwf	((c:_eeprom_num)),c
	line	1216
	
l2881:; BSR set to: 0

;CoilDet-V0.0.C: 1216: EEPROMWrite(&eeprom_addr,&eeprom_num,dat);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMWrite)),c
	movff	(c:DTWriteSens@dat),0+((c:?_EEPROMWrite)+01h)
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMWrite
	line	1217
	
l2883:
;CoilDet-V0.0.C: 1217: ReadSensTable(det_current_sens_table);
	movlb	0	; () banked
	movlw	(_det_current_sens_table)&0ffh
	
	call	_ReadSensTable
	line	1218
	
l2885:
;CoilDet-V0.0.C: 1218: SetSens(det_current_sens_table,det_current_sens_lv);
	movlw	low((c:_det_current_sens_lv))
	movwf	((c:?_SetSens)),c
	movlb	0	; () banked
	movlw	(_det_current_sens_table)&0ffh
	
	call	_SetSens
	line	1220
	
l743:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_DTWriteSens
	__end_of_DTWriteSens:
	signat	_DTWriteSens,4216
	global	_SetSens

;; *************** function _SetSens *****************
;; Defined at:
;;		line 575 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  table           1    wreg     PTR unsigned char 
;;		 -> det_current_sens_table(16), 
;;  level           1    0[COMRAM] PTR unsigned char 
;;		 -> det_current_sens_lv(4), 
;; Auto vars:     Size  Location     Type
;;  table           1    2[COMRAM] PTR unsigned char 
;;		 -> det_current_sens_table(16), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DTWriteSensLv
;;		_DTWriteSens
;; This function uses a non-reentrant model
;;
psect	text20,class=CODE,space=0,reloc=2
global __ptext20
__ptext20:
psect	text20
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	575
	global	__size_of_SetSens
	__size_of_SetSens	equ	__end_of_SetSens-_SetSens
	
_SetSens:; BSR set to: 0

	opt	stack 25
;SetSens@table stored from wreg
	movff	wreg,(c:SetSens@table)
	line	576
	
l2493:; BSR set to: 0

;CoilDet-V0.0.C: 576: det_current_sens[0]=*(table+(*level&0x0f));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:_det_current_sens)),c
	line	577
;CoilDet-V0.0.C: 577: det_current_sens[1]=*(table+((*level&0xf0)>>4));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	swapf	((??_SetSens+0+0)),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	((??_SetSens+0+0)),c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+01h)),c
	line	578
	
l2495:; BSR set to: 0

;CoilDet-V0.0.C: 578: level++;
	incf	((c:SetSens@level)),c
	line	579
	
l2497:; BSR set to: 0

;CoilDet-V0.0.C: 579: det_current_sens[2] =*(table+(*level&0x0f));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+02h)),c
	line	580
	
l2499:; BSR set to: 0

;CoilDet-V0.0.C: 580: det_current_sens[3] =*(table+((*level&0xf0)>>4));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	swapf	((??_SetSens+0+0)),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	((??_SetSens+0+0)),c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+03h)),c
	line	581
	
l2501:; BSR set to: 0

;CoilDet-V0.0.C: 581: level++;
	incf	((c:SetSens@level)),c
	line	582
;CoilDet-V0.0.C: 582: det_current_sens[4] =*(table+(*level&0x0f));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+04h)),c
	line	583
;CoilDet-V0.0.C: 583: det_current_sens[5] =*(table+((*level&0xf0)>>4));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	swapf	((??_SetSens+0+0)),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	((??_SetSens+0+0)),c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+05h)),c
	line	584
	
l2503:; BSR set to: 0

;CoilDet-V0.0.C: 584: level++;
	incf	((c:SetSens@level)),c
	line	585
	
l2505:; BSR set to: 0

;CoilDet-V0.0.C: 585: det_current_sens[6] =*(table+(*level&0x0f));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+06h)),c
	line	586
	
l2507:; BSR set to: 0

;CoilDet-V0.0.C: 586: det_current_sens[7] =*(table+((*level&0xf0)>>4));
	movf	((c:SetSens@level)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_SetSens+0+0)&0ffh,c
	swapf	((??_SetSens+0+0)),c
	movlw	(0ffh shr 4) & 0ffh
	andwf	((??_SetSens+0+0)),c
	movlw	0Fh
	andwf	((??_SetSens+0+0)),c
	movf	((c:SetSens@table)),c,w
	addwf	((??_SetSens+0+0)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_current_sens)+07h)),c
	line	587
	
l594:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_SetSens
	__end_of_SetSens:
	signat	_SetSens,8312
	global	_ReadSensTable

;; *************** function _ReadSensTable *****************
;; Defined at:
;;		line 1186 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> det_current_sens_table(16), DT_data1(18), 
;; Auto vars:     Size  Location     Type
;;  dat             1    6[COMRAM] PTR unsigned char 
;;		 -> det_current_sens_table(16), DT_data1(18), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_EEPROMRead
;; This function is called by:
;;		_DTWriteSens
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text21,class=CODE,space=0,reloc=2
global __ptext21
__ptext21:
psect	text21
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1186
	global	__size_of_ReadSensTable
	__size_of_ReadSensTable	equ	__end_of_ReadSensTable-_ReadSensTable
	
_ReadSensTable:; BSR set to: 0

	opt	stack 24
;ReadSensTable@dat stored from wreg
	line	1188
	movff	wreg,(c:ReadSensTable@dat)
	
l2867:; BSR set to: 0

;CoilDet-V0.0.C: 1188: eeprom_addr = 0x0009;
	movlw	high(09h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(09h)
	movwf	((c:_eeprom_addr)),c
	line	1189
;CoilDet-V0.0.C: 1189: eeprom_num = 16;
	movlw	low(010h)
	movwf	((c:_eeprom_num)),c
	line	1190
	
l2869:; BSR set to: 0

;CoilDet-V0.0.C: 1190: EEPROMRead(&eeprom_addr,&eeprom_num,dat);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMRead)),c
	movff	(c:ReadSensTable@dat),0+((c:?_EEPROMRead)+01h)
	clrf	(1+((c:?_EEPROMRead)+01h)),c
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMRead
	line	1191
	
l737:
	return
	opt stack 0
GLOBAL	__end_of_ReadSensTable
	__end_of_ReadSensTable:
	signat	_ReadSensTable,4216
	global	_EEPROMRead

;; *************** function _EEPROMRead *****************
;; Defined at:
;;		line 45 in file "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     PTR unsigned int 
;;		 -> eeprom_addr(2), 
;;  num             1    0[COMRAM] PTR unsigned char 
;;		 -> eeprom_num(1), 
;;  dat             2    1[COMRAM] PTR unsigned char 
;;		 -> det_current_sens_table(16), det_current_sens_lv(4), DT_data1(18), SetConfig@EEPromData(22), 
;; Auto vars:     Size  Location     Type
;;  addr            1    5[COMRAM] PTR unsigned int 
;;		 -> eeprom_addr(2), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         6       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetConfig
;;		_ReadFrequency
;;		_ReadSensLv
;;		_ReadSensTable
;; This function uses a non-reentrant model
;;
psect	text22,class=CODE,space=0,reloc=2
global __ptext22
__ptext22:
psect	text22
	file	"E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
	line	45
	global	__size_of_EEPROMRead
	__size_of_EEPROMRead	equ	__end_of_EEPROMRead-_EEPROMRead
	
_EEPROMRead:
	opt	stack 24
;EEPROMRead@addr stored from wreg
	movff	wreg,(c:EEPROMRead@addr)
	line	46
;mcu.h: 46: do
	
l425:
	line	48
	
l2271:
;mcu.h: 47: {
;mcu.h: 48: EEADRH = (*addr)>>8;
	movf	((c:EEPROMRead@addr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_EEPROMRead+0+0
	movff	postdec2,??_EEPROMRead+0+0+1
	movff	??_EEPROMRead+0+1,??_EEPROMRead+0+0
	clrf	(??_EEPROMRead+0+1),c
	movf	(??_EEPROMRead+0+0),c,w
	movwf	((c:3957)),c	;volatile
	line	49
	
l2273:
;mcu.h: 49: EEADR = (*addr);
	movf	((c:EEPROMRead@addr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:3956)),c	;volatile
	line	50
	
l2275:
;mcu.h: 50: (*addr)++;
	movf	((c:EEPROMRead@addr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	52
	
l2277:
;mcu.h: 52: EEDATA = 0;
	clrf	((c:3955)),c	;volatile
	line	54
	
l2279:
;mcu.h: 54: EECON1 &= 0x3f;
	movlw	(03Fh)&0ffh
	andwf	((c:3967)),c	;volatile
	line	57
	
l2281:
;mcu.h: 57: EECON1 |= 0x01;
	bsf	(0+(0/8)+(c:3967)),c,(0)&7	;volatile
	line	58
	
l2283:
# 58 "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
NOP ;# 
psect	text22
	line	60
	
l2285:
;mcu.h: 60: (*dat) = EEDATA;
	movff	(c:EEPROMRead@dat),fsr2l
	movff	(c:EEPROMRead@dat+1),fsr2h
	movff	(c:3955),indf2	;volatile

	line	61
	
l2287:
;mcu.h: 61: dat++;
	infsnz	((c:EEPROMRead@dat)),c
	incf	((c:EEPROMRead@dat+1)),c
	line	63
	
l2289:
;mcu.h: 62: }
;mcu.h: 63: while((*num)--);
	movf	((c:EEPROMRead@num)),c,w
	movwf	fsr2l
	clrf	fsr2h
	decf	indf2

	movlw	(0FFh)&0ffh
	cpfseq	indf2
	goto	u1351
	goto	u1350
u1351:
	goto	l425
u1350:
	line	65
	
l427:
	return
	opt stack 0
GLOBAL	__end_of_EEPROMRead
	__end_of_EEPROMRead:
	signat	_EEPROMRead,12408
	global	_DTWriteOSCSet

;; *************** function _DTWriteOSCSet *****************
;; Defined at:
;;		line 1224 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> DT_data(18), 
;; Auto vars:     Size  Location     Type
;;  dat             1    8[COMRAM] PTR unsigned char 
;;		 -> DT_data(18), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_EEPROMWrite
;;		_SetFreq
;; This function is called by:
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text23,class=CODE,space=0,reloc=2
global __ptext23
__ptext23:
psect	text23
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1224
	global	__size_of_DTWriteOSCSet
	__size_of_DTWriteOSCSet	equ	__end_of_DTWriteOSCSet-_DTWriteOSCSet
	
_DTWriteOSCSet:
	opt	stack 24
;DTWriteOSCSet@dat stored from wreg
	line	1226
	movff	wreg,(c:DTWriteOSCSet@dat)
	
l2887:; BSR set to: 0

;CoilDet-V0.0.C: 1226: eeprom_addr = 0x0019;
	movlw	high(019h)
	movwf	((c:_eeprom_addr+1)),c
	movlw	low(019h)
	movwf	((c:_eeprom_addr)),c
	line	1227
;CoilDet-V0.0.C: 1227: eeprom_num = 2;
	movlw	low(02h)
	movwf	((c:_eeprom_num)),c
	line	1228
	
l2889:; BSR set to: 0

;CoilDet-V0.0.C: 1228: EEPROMWrite(&eeprom_addr,&eeprom_num,dat);
	movlw	low((c:_eeprom_num))
	movwf	((c:?_EEPROMWrite)),c
	movff	(c:DTWriteOSCSet@dat),0+((c:?_EEPROMWrite)+01h)
	movlw	((c:_eeprom_addr))&0ffh
	
	call	_EEPROMWrite
	line	1229
	
l2891:
;CoilDet-V0.0.C: 1229: det_osc_cfg[0]=*dat;
	movf	((c:DTWriteOSCSet@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:_det_osc_cfg)),c
	line	1230
	
l2893:
;CoilDet-V0.0.C: 1230: dat++;
	incf	((c:DTWriteOSCSet@dat)),c
	line	1231
	
l2895:
;CoilDet-V0.0.C: 1231: det_osc_cfg[1]=*dat;
	movf	((c:DTWriteOSCSet@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:_det_osc_cfg)+01h)),c
	line	1232
	
l2897:
;CoilDet-V0.0.C: 1232: SetFreq(det_osc_cfg);
	movlw	((c:_det_osc_cfg))&0ffh
	
	call	_SetFreq
	line	1233
	
l2899:
;CoilDet-V0.0.C: 1233: DT_data1[0]=det_osc_cfg[0];
	movff	(c:_det_osc_cfg),(_DT_data1)
	line	1234
	
l2901:
;CoilDet-V0.0.C: 1234: DT_data1[1]=det_osc_cfg[1];
	movff	0+((c:_det_osc_cfg)+01h),0+(_DT_data1+01h)
	line	1239
	
l746:
	return
	opt stack 0
GLOBAL	__end_of_DTWriteOSCSet
	__end_of_DTWriteOSCSet:
	signat	_DTWriteOSCSet,4216
	global	_EEPROMWrite

;; *************** function _EEPROMWrite *****************
;; Defined at:
;;		line 70 in file "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     PTR unsigned int 
;;		 -> eeprom_addr(2), 
;;  num             1    0[COMRAM] PTR unsigned char 
;;		 -> eeprom_num(1), 
;;  dat             1    1[COMRAM] PTR unsigned char 
;;		 -> DT_data(18), 
;; Auto vars:     Size  Location     Type
;;  addr            1    4[COMRAM] PTR unsigned int 
;;		 -> eeprom_addr(2), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_DTWriteSensLv
;;		_DTWriteSens
;;		_DTWriteOSCSet
;; This function uses a non-reentrant model
;;
psect	text24,class=CODE,space=0,reloc=2
global __ptext24
__ptext24:
psect	text24
	file	"E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
	line	70
	global	__size_of_EEPROMWrite
	__size_of_EEPROMWrite	equ	__end_of_EEPROMWrite-_EEPROMWrite
	
_EEPROMWrite:
	opt	stack 25
;EEPROMWrite@addr stored from wreg
	movff	wreg,(c:EEPROMWrite@addr)
	line	71
	
l2291:; BSR set to: 0

;mcu.h: 71: INTCON &= 0x3f;
	movlw	(03Fh)&0ffh
	andwf	((c:4082)),c	;volatile
	line	72
;mcu.h: 72: while((*num)--)
	goto	l2315
	line	74
	
l2293:
;mcu.h: 73: {
;mcu.h: 74: EEADRH = (*addr)>>8;
	movf	((c:EEPROMWrite@addr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_EEPROMWrite+0+0
	movff	postdec2,??_EEPROMWrite+0+0+1
	movff	??_EEPROMWrite+0+1,??_EEPROMWrite+0+0
	clrf	(??_EEPROMWrite+0+1),c
	movf	(??_EEPROMWrite+0+0),c,w
	movwf	((c:3957)),c	;volatile
	line	75
;mcu.h: 75: EEADR = (*addr);
	movf	((c:EEPROMWrite@addr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:3956)),c	;volatile
	line	76
	
l2295:
;mcu.h: 76: (*addr)++;
	movf	((c:EEPROMWrite@addr)),c,w
	movwf	fsr2l
	clrf	fsr2h
	incf	postinc2
	movlw	0
	addwfc	postdec2
	line	77
	
l2297:
;mcu.h: 77: EEDATA = (*dat);
	movf	((c:EEPROMWrite@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:3955)),c	;volatile
	line	78
	
l2299:
;mcu.h: 78: dat++;
	incf	((c:EEPROMWrite@dat)),c
	line	80
	
l2301:
;mcu.h: 80: EECON1 &= 0x3f;
	movlw	(03Fh)&0ffh
	andwf	((c:3967)),c	;volatile
	line	82
	
l2303:
;mcu.h: 82: EECON1 |= 0x04;
	bsf	(0+(2/8)+(c:3967)),c,(2)&7	;volatile
	line	87
	
l2305:
;mcu.h: 87: EECON2 = 0x55;
	movlw	low(055h)
	movwf	((c:3966)),c	;volatile
	line	88
	
l2307:
;mcu.h: 88: EECON2 = 0xaa;
	movlw	low(0AAh)
	movwf	((c:3966)),c	;volatile
	line	90
	
l2309:
;mcu.h: 90: EECON1 |= 0x02;
	bsf	(0+(1/8)+(c:3967)),c,(1)&7	;volatile
	line	92
	
l2311:
# 92 "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
NOP ;# 
psect	text24
	line	93
;mcu.h: 93: while(EECON1 & 0x02);
	
l432:
	
	btfsc	((c:3967)),c,(1)&7	;volatile
	goto	u1361
	goto	u1360
u1361:
	goto	l432
u1360:
	
l434:
	line	94
# 94 "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
NOP ;# 
psect	text24
	line	95
	
l2313:
;mcu.h: 95: EECON1 &= 0x04;
	movlw	(04h)&0ffh
	andwf	((c:3967)),c	;volatile
	line	72
	
l2315:
	movf	((c:EEPROMWrite@num)),c,w
	movwf	fsr2l
	clrf	fsr2h
	decf	indf2

	movlw	(0FFh)&0ffh
	cpfseq	indf2
	goto	u1371
	goto	u1370
u1371:
	goto	l2293
u1370:
	line	99
	
l2317:
;mcu.h: 97: }
;mcu.h: 99: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	100
	
l436:
	return
	opt stack 0
GLOBAL	__end_of_EEPROMWrite
	__end_of_EEPROMWrite:
	signat	_EEPROMWrite,12408
	global	_SetFreq

;; *************** function _SetFreq *****************
;; Defined at:
;;		line 563 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> det_osc_cfg(2), 
;; Auto vars:     Size  Location     Type
;;  dat             1    7[COMRAM] PTR unsigned char 
;;		 -> det_osc_cfg(2), 
;;  temp_data       2    5[COMRAM] unsigned char [2]
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/F
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Set595Output
;; This function is called by:
;;		_SetConfig
;;		_DTWriteOSCSet
;; This function uses a non-reentrant model
;;
psect	text25,class=CODE,space=0,reloc=2
global __ptext25
__ptext25:
psect	text25
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	563
	global	__size_of_SetFreq
	__size_of_SetFreq	equ	__end_of_SetFreq-_SetFreq
	
_SetFreq:
	opt	stack 24
;SetFreq@dat stored from wreg
	line	564
	movff	wreg,(c:SetFreq@dat)
	
l2485:
;CoilDet-V0.0.C: 564: unsigned char temp_data[2] = {0,0};
	clrf	((c:SetFreq@temp_data)),c
	clrf	((c:SetFreq@temp_data+1)),c
	line	566
	
l2487:
;CoilDet-V0.0.C: 566: temp_data[1] = dat[0];
	movf	((c:SetFreq@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(0+((c:SetFreq@temp_data)+01h)),c
	line	567
	
l2489:
;CoilDet-V0.0.C: 567: temp_data[0] = dat[1];
	movf	((c:SetFreq@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:SetFreq@temp_data)),c
	line	568
	
l2491:
;CoilDet-V0.0.C: 568: Set595Output(temp_data,2);
	movlw	low(02h)
	movwf	((c:?_Set595Output)),c
	movlw	((c:SetFreq@temp_data))&0ffh
	
	call	_Set595Output
	line	570
	
l591:
	return
	opt stack 0
GLOBAL	__end_of_SetFreq
	__end_of_SetFreq:
	signat	_SetFreq,4216
	global	_Set595Output

;; *************** function _Set595Output *****************
;; Defined at:
;;		line 507 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  dat             1    wreg     PTR unsigned char 
;;		 -> SetFreq@temp_data(2), 
;;  num             1    0[COMRAM] unsigned char 
;; Auto vars:     Size  Location     Type
;;  dat             1    2[COMRAM] PTR unsigned char 
;;		 -> SetFreq@temp_data(2), 
;;  i               1    4[COMRAM] unsigned char 
;;  tempd           1    3[COMRAM] unsigned char 
;;  j               1    1[COMRAM] unsigned char 
;;  mov             1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/F
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         5       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SetFreq
;; This function uses a non-reentrant model
;;
psect	text26,class=CODE,space=0,reloc=2
global __ptext26
__ptext26:
psect	text26
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	507
	global	__size_of_Set595Output
	__size_of_Set595Output	equ	__end_of_Set595Output-_Set595Output
	
_Set595Output:
	opt	stack 24
;Set595Output@dat stored from wreg
	line	509
	movff	wreg,(c:Set595Output@dat)
	line	508
	
l2453:
	line	509
;CoilDet-V0.0.C: 510: unsigned char mov=0x00;
	clrf	((c:Set595Output@tempd)),c
	line	512
;CoilDet-V0.0.C: 512: RB3 = 0;
	bcf	c:(31755/8),(31755)&7	;volatile
	line	515
	
l2455:
;CoilDet-V0.0.C: 515: PORTB |= 0X02;
	bsf	(0+(1/8)+(c:3969)),c,(1)&7	;volatile
	line	518
	
l2457:
;CoilDet-V0.0.C: 518: RB2=TRUE;
	bsf	c:(31754/8),(31754)&7	;volatile
	line	520
	
l2459:
;CoilDet-V0.0.C: 520: tempd =dat[0];
	movf	((c:Set595Output@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:Set595Output@tempd)),c
	line	522
	
l2461:
;CoilDet-V0.0.C: 522: for(j=0;j<num;j++)
	clrf	((c:Set595Output@j)),c
	goto	l2481
	line	523
	
l580:
	line	524
;CoilDet-V0.0.C: 523: {
;CoilDet-V0.0.C: 524: for(i=0;i<8;i++)
	clrf	((c:Set595Output@i)),c
	line	525
	
l581:
	line	528
;CoilDet-V0.0.C: 525: {
;CoilDet-V0.0.C: 528: if(tempd & 0x80)
	
	btfss	((c:Set595Output@tempd)),c,(7)&7
	goto	u1541
	goto	u1540
u1541:
	goto	l583
u1540:
	line	530
	
l2467:
;CoilDet-V0.0.C: 529: {
;CoilDet-V0.0.C: 530: RB4 = 1;
	bsf	c:(31756/8),(31756)&7	;volatile
	line	531
;CoilDet-V0.0.C: 531: }
	goto	l2469
	line	532
	
l583:
	line	534
;CoilDet-V0.0.C: 532: else
;CoilDet-V0.0.C: 533: {
;CoilDet-V0.0.C: 534: RB4 = 0;
	bcf	c:(31756/8),(31756)&7	;volatile
	line	537
	
l2469:
;CoilDet-V0.0.C: 535: }
;CoilDet-V0.0.C: 537: PORTB &= 0XFE;
	bcf	(0+(0/8)+(c:3969)),c,(0)&7	;volatile
	line	539
;CoilDet-V0.0.C: 539: PORTB |= 0X01;
	bsf	(0+(0/8)+(c:3969)),c,(0)&7	;volatile
	line	541
;CoilDet-V0.0.C: 541: PORTB &= 0XFE;
	bcf	(0+(0/8)+(c:3969)),c,(0)&7	;volatile
	line	542
	
l2471:
;CoilDet-V0.0.C: 542: tempd <<=1;
	bcf status,0
	rlcf	((c:Set595Output@tempd)),c

	line	524
	
l2473:
	incf	((c:Set595Output@i)),c
	
l2475:
	movlw	(08h-1)
	cpfsgt	((c:Set595Output@i)),c
	goto	u1551
	goto	u1550
u1551:
	goto	l581
u1550:
	line	545
	
l2477:
;CoilDet-V0.0.C: 543: }
;CoilDet-V0.0.C: 545: tempd = dat[1];
	movf	((c:Set595Output@dat)),c,w
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(01h)
	addwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	((c:Set595Output@tempd)),c
	line	522
	
l2479:
	incf	((c:Set595Output@j)),c
	
l2481:
	movf	((c:Set595Output@num)),c,w
	subwf	((c:Set595Output@j)),c,w
	btfss	status,0
	goto	u1561
	goto	u1560
u1561:
	goto	l580
u1560:
	line	550
	
l2483:
;CoilDet-V0.0.C: 548: }
;CoilDet-V0.0.C: 550: PORTB &= 0XFD;
	bcf	(0+(1/8)+(c:3969)),c,(1)&7	;volatile
	line	552
;CoilDet-V0.0.C: 552: PORTB |= 0X02;
	bsf	(0+(1/8)+(c:3969)),c,(1)&7	;volatile
	line	554
;CoilDet-V0.0.C: 554: PORTB &= 0XFD;
	bcf	(0+(1/8)+(c:3969)),c,(1)&7	;volatile
	line	558
	
l586:
	return
	opt stack 0
GLOBAL	__end_of_Set595Output
	__end_of_Set595Output:
	signat	_Set595Output,8312
	global	_GetCoilState

;; *************** function _GetCoilState *****************
;; Defined at:
;;		line 1242 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_GetSampPluse
;; This function is called by:
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text27,class=CODE,space=0,reloc=2
global __ptext27
__ptext27:
psect	text27
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1242
	global	__size_of_GetCoilState
	__size_of_GetCoilState	equ	__end_of_GetCoilState-_GetCoilState
	
_GetCoilState:
	opt	stack 23
	line	1249
	
l2903:
;CoilDet-V0.0.C: 1249: GetSampPluse();
	call	_GetSampPluse	;wreg free
	line	1250
	
l2905:
;CoilDet-V0.0.C: 1250: DT_data1[2]=det_status[0];
	movff	(c:_det_status),0+(_DT_data1+02h)
	line	1251
	
l2907:
;CoilDet-V0.0.C: 1251: DT_data1[3]=det_status[1];
	movff	0+((c:_det_status)+01h),0+(_DT_data1+03h)
	line	1252
	
l2909:
;CoilDet-V0.0.C: 1252: DT_data1[4]=det_status[2];
	movff	0+((c:_det_status)+02h),0+(_DT_data1+04h)
	line	1253
	
l2911:
;CoilDet-V0.0.C: 1253: DT_data1[5]=det_status[3];
	movff	0+((c:_det_status)+03h),0+(_DT_data1+05h)
	line	1254
	
l749:
	return
	opt stack 0
GLOBAL	__end_of_GetCoilState
	__end_of_GetCoilState:
	signat	_GetCoilState,88
	global	_GetSampPluse

;; *************** function _GetSampPluse *****************
;; Defined at:
;;		line 739 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               1   11[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_delayus
;;		_GetChSampPluse
;; This function is called by:
;;		_GetCoilState
;;		_main
;; This function uses a non-reentrant model
;;
psect	text28,class=CODE,space=0,reloc=2
global __ptext28
__ptext28:
psect	text28
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	739
	global	__size_of_GetSampPluse
	__size_of_GetSampPluse	equ	__end_of_GetSampPluse-_GetSampPluse
	
_GetSampPluse:
	opt	stack 23
	line	740
	
l2609:
;CoilDet-V0.0.C: 740: unsigned char i = 0x00;
	clrf	((c:GetSampPluse@i)),c
	line	752
;CoilDet-V0.0.C: 752: for(i=0;i<8;i++)
	clrf	((c:GetSampPluse@i)),c
	
l2611:
	movlw	(08h-1)
	cpfsgt	((c:GetSampPluse@i)),c
	goto	u1671
	goto	u1670
u1671:
	goto	l2615
u1670:
	goto	l628
	line	754
	
l2615:
;CoilDet-V0.0.C: 753: {
;CoilDet-V0.0.C: 754: if(det_result_output&(0x01<<i))
	movff	(c:GetSampPluse@i),??_GetSampPluse+0+0
	movlw	(01h)&0ffh
	movwf	(??_GetSampPluse+1+0)&0ffh,c
	incf	(??_GetSampPluse+0+0),c
	goto	u1684
u1685:
	bcf	status,0
	rlcf	((??_GetSampPluse+1+0)),c
u1684:
	decfsz	(??_GetSampPluse+0+0),c
	goto	u1685
	movf	((??_GetSampPluse+1+0)),c,w
	andwf	((c:_det_result_output)),c,w
	iorlw	0
	btfsc	status,2
	goto	u1691
	goto	u1690
u1691:
	goto	l624
u1690:
	line	756
	
l2617:
;CoilDet-V0.0.C: 755: {
;CoilDet-V0.0.C: 756: det_enable |= (0x01 <<i);
	movff	(c:GetSampPluse@i),??_GetSampPluse+0+0
	movlw	(01h)&0ffh
	movwf	(??_GetSampPluse+1+0)&0ffh,c
	incf	(??_GetSampPluse+0+0),c
	goto	u1704
u1705:
	bcf	status,0
	rlcf	((??_GetSampPluse+1+0)),c
u1704:
	decfsz	(??_GetSampPluse+0+0),c
	goto	u1705
	movf	((??_GetSampPluse+1+0)),c,w
	iorwf	((c:_det_enable)),c
	line	757
	
l2619:
;CoilDet-V0.0.C: 757: if(i%2 == 0x00)
	
	btfsc	((c:GetSampPluse@i)),c,(0)&7
	goto	u1711
	goto	u1710
u1711:
	goto	l2623
u1710:
	line	759
	
l2621:
;CoilDet-V0.0.C: 758: {
;CoilDet-V0.0.C: 759: det_status[i/2] |= (((det_status[i/2] & 0xf0) | 0x08)|0x00);
	movff	(c:GetSampPluse@i),??_GetSampPluse+0+0
	bcf	status,0
	rrcf	(??_GetSampPluse+0+0),c

	movf	(??_GetSampPluse+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_GetSampPluse+1+0)&0ffh,c
	movlw	0F0h
	andwf	((??_GetSampPluse+1+0)),c
	movlw	08h
	iorwf	((??_GetSampPluse+1+0)),c
	movff	(c:GetSampPluse@i),??_GetSampPluse+2+0
	bcf	status,0
	rrcf	(??_GetSampPluse+2+0),c

	movf	(??_GetSampPluse+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_GetSampPluse+1+0)),c,w
	iorwf	indf2
	line	760
;CoilDet-V0.0.C: 760: }
	goto	l2631
	line	763
	
l2623:
;CoilDet-V0.0.C: 761: else
;CoilDet-V0.0.C: 762: {
;CoilDet-V0.0.C: 763: det_status[i/2] |= (((det_status[i/2] & 0x0f) | 0x80)|(0x00<<4));
	movff	(c:GetSampPluse@i),??_GetSampPluse+0+0
	bcf	status,0
	rrcf	(??_GetSampPluse+0+0),c

	movf	(??_GetSampPluse+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_GetSampPluse+1+0)&0ffh,c
	movlw	0Fh
	andwf	((??_GetSampPluse+1+0)),c
	movlw	080h
	iorwf	((??_GetSampPluse+1+0)),c
	movff	(c:GetSampPluse@i),??_GetSampPluse+2+0
	bcf	status,0
	rrcf	(??_GetSampPluse+2+0),c

	movf	(??_GetSampPluse+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_GetSampPluse+1+0)),c,w
	iorwf	indf2
	goto	l2631
	line	766
	
l624:
	line	768
;CoilDet-V0.0.C: 766: else
;CoilDet-V0.0.C: 767: {
;CoilDet-V0.0.C: 768: PORTD = 0xFF;
	setf	((c:3971)),c	;volatile
	line	769
	
l2625:
;CoilDet-V0.0.C: 769: PORTD = (~(0x01 << i));
	movff	(c:GetSampPluse@i),??_GetSampPluse+0+0
	movlw	(01h)&0ffh
	movwf	(??_GetSampPluse+1+0)&0ffh,c
	incf	(??_GetSampPluse+0+0),c
	goto	u1724
u1725:
	bcf	status,0
	rlcf	((??_GetSampPluse+1+0)),c
u1724:
	decfsz	(??_GetSampPluse+0+0),c
	goto	u1725
	movf	((??_GetSampPluse+1+0)),c,w
	xorlw	0ffh
	movwf	((c:3971)),c	;volatile
	line	771
	
l2627:
;CoilDet-V0.0.C: 771: delayus(100);
	movlw	high(064h)
	movwf	((c:?_delayus+1)),c
	movlw	low(064h)
	movwf	((c:?_delayus)),c
	call	_delayus	;wreg free
	line	772
	
l2629:
;CoilDet-V0.0.C: 772: GetChSampPluse(i);
	movf	((c:GetSampPluse@i)),c,w
	
	call	_GetChSampPluse
	line	752
	
l2631:
	incf	((c:GetSampPluse@i)),c
	goto	l2611
	line	776
	
l628:
	return
	opt stack 0
GLOBAL	__end_of_GetSampPluse
	__end_of_GetSampPluse:
	signat	_GetSampPluse,88
	global	_delayus

;; *************** function _delayus *****************
;; Defined at:
;;		line 104 in file "E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
;; Parameters:    Size  Location     Type
;;  us              2    0[COMRAM] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMRAM] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : 0/F
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_delayms
;;		_GetSampPluse
;;		_DetInit
;;		_StartDet
;; This function uses a non-reentrant model
;;
psect	text29,class=CODE,space=0,reloc=2
global __ptext29
__ptext29:
psect	text29
	file	"E:\working\coil\coil-v0.0-14\CoilDet\mcu.h"
	line	104
	global	__size_of_delayus
	__size_of_delayus	equ	__end_of_delayus-_delayus
	
_delayus:
	opt	stack 25
	line	107
	
l2319:
;mcu.h: 106: unsigned int i;
;mcu.h: 107: us=us-5;
	movlw	low(0FFFBh)
	addwf	((c:delayus@us)),c
	movlw	high(0FFFBh)
	addwfc	((c:delayus@us+1)),c
	line	109
	
l2321:
;mcu.h: 109: for(i=0;i<us;i++)
	clrf	((c:delayus@i)),c
	clrf	((c:delayus@i+1)),c
	goto	l2325
	
l2323:
;mcu.h: 110: {
;mcu.h: 111: ;
	infsnz	((c:delayus@i)),c
	incf	((c:delayus@i+1)),c
	
l2325:
	movf	((c:delayus@us)),c,w
	subwf	((c:delayus@i)),c,w
	movf	((c:delayus@us+1)),c,w
	subwfb	((c:delayus@i+1)),c,w
	btfss	status,0
	goto	u1381
	goto	u1380
u1381:
	goto	l2323
u1380:
	line	115
	
l442:
	return
	opt stack 0
GLOBAL	__end_of_delayus
	__end_of_delayus:
	signat	_delayus,4216
	global	_GetChSampPluse

;; *************** function _GetChSampPluse *****************
;; Defined at:
;;		line 678 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    7[COMRAM] unsigned char 
;;  temp_sta        1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh, cstack
;; Tracked objects:
;;		On entry : 0/F
;;		On exit  : F/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_PulseErrSet
;; This function is called by:
;;		_GetSampPluse
;; This function uses a non-reentrant model
;;
psect	text30,class=CODE,space=0,reloc=2
global __ptext30
__ptext30:
psect	text30
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	678
	global	__size_of_GetChSampPluse
	__size_of_GetChSampPluse	equ	__end_of_GetChSampPluse-_GetChSampPluse
	
_GetChSampPluse:
	opt	stack 23
;GetChSampPluse@ch stored from wreg
	line	685
	movff	wreg,(c:GetChSampPluse@ch)
	line	679
	
l2575:
	line	685
;CoilDet-V0.0.C: 685: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	687
	
l2577:
;CoilDet-V0.0.C: 687: TMR0H = 0xd8;
	movlw	low(0D8h)
	movwf	((c:4055)),c	;volatile
	line	688
;CoilDet-V0.0.C: 688: TMR0L = 0xef;
	movlw	low(0EFh)
	movwf	((c:4054)),c	;volatile
	line	691
	
l2579:
;CoilDet-V0.0.C: 691: TMR3ON = 0;
	bcf	c:(32136/8),(32136)&7	;volatile
	line	693
	
l2581:
;CoilDet-V0.0.C: 693: TMR3H = 0X00;
	clrf	((c:4019)),c	;volatile
	line	694
	
l2583:
;CoilDet-V0.0.C: 694: TMR3L = 0X00;
	clrf	((c:4018)),c	;volatile
	line	696
	
l2585:
;CoilDet-V0.0.C: 696: TMR3IE = 0;
	bcf	c:(32001/8),(32001)&7	;volatile
	line	698
	
l2587:
;CoilDet-V0.0.C: 698: SSPIE = 0;
	bcf	c:(31979/8),(31979)&7	;volatile
	line	700
	
l2589:
;CoilDet-V0.0.C: 700: time0_int = 0 ;
	movlb	(_time0_int/8) >> 8
	bcf	(_time0_int/8),c,(_time0_int)&7
	line	703
	
l2591:
;CoilDet-V0.0.C: 703: TMR3ON = 1;
	bsf	c:(32136/8),(32136)&7	;volatile
	line	705
	
l2593:
;CoilDet-V0.0.C: 705: TMR0ON = 1;
	bsf	c:(32431/8),(32431)&7	;volatile
	line	707
	
l2595:
;CoilDet-V0.0.C: 707: INTCON |= 0xc0;
	movlw	(0C0h)&0ffh
	iorwf	((c:4082)),c	;volatile
	line	717
;CoilDet-V0.0.C: 709: {
	
l615:
	line	708
	movlb	(_time0_int/8) >> 8
	btfss	(_time0_int/8),c,(_time0_int)&7
	goto	u1661
	goto	u1660
u1661:
	goto	l615
u1660:
	
l617:
	line	719
;CoilDet-V0.0.C: 717: }
;CoilDet-V0.0.C: 719: TMR3ON = 0;
	bcf	c:(32136/8),(32136)&7	;volatile
	line	721
;CoilDet-V0.0.C: 721: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	722
	
l2597:
;CoilDet-V0.0.C: 722: det_pluse_counter[ch] = 0x0000;
	movf	((c:GetChSampPluse@ch)),c,w
	mullw	02h
	movf	(prodl),c,w
	movlb	0	; () banked
	addlw	low(_det_pluse_counter)
	movwf	fsr2l
	clrf	fsr2h
	movlw	low(0)
	movwf	postinc2
	movlw	high(0)
	movwf	postdec2
	line	723
;CoilDet-V0.0.C: 723: det_pluse_counter[ch] = (TMR3H <<8)|TMR3L;
	movf	((c:4018)),c,w	;volatile
	movff	(c:4019),??_GetChSampPluse+0+0	;volatile
	clrf	(??_GetChSampPluse+0+0+1)&0ffh,c
	movff	??_GetChSampPluse+0+0,??_GetChSampPluse+0+1
	clrf	(??_GetChSampPluse+0+0),c
	iorwf	(??_GetChSampPluse+0+0),c
	movlw	0
	iorwf	(??_GetChSampPluse+0+1),c
	movf	((c:GetChSampPluse@ch)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_det_pluse_counter)
	movwf	fsr2l
	clrf	fsr2h
	movff	??_GetChSampPluse+0+0,postinc2
	movff	??_GetChSampPluse+0+1,postdec2

	line	724
	
l2599:; BSR set to: 0

;CoilDet-V0.0.C: 724: det_pluse_counter_h[ch] = 0xff - TMR3H;
	movf	((c:GetChSampPluse@ch)),c,w
	addlw	low(_det_pluse_counter_h)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:4019)),c,w	;volatile
	xorlw	0ffh
	movwf	indf2

	line	725
	
l2601:; BSR set to: 0

;CoilDet-V0.0.C: 725: det_pluse_counter_l[ch] = 0xff - TMR3L;
	movf	((c:GetChSampPluse@ch)),c,w
	addlw	low(_det_pluse_counter_l)
	movwf	fsr2l
	clrf	fsr2h
	movf	((c:4018)),c,w	;volatile
	xorlw	0ffh
	movwf	indf2

	line	733
	
l2607:; BSR set to: 0

;CoilDet-V0.0.C: 732: }
;CoilDet-V0.0.C: 733: PulseErrSet(ch);
	movf	((c:GetChSampPluse@ch)),c,w
	
	call	_PulseErrSet
	line	735
	
l619:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_GetChSampPluse
	__end_of_GetChSampPluse:
	signat	_GetChSampPluse,4216
	global	_PulseErrSet

;; *************** function _PulseErrSet *****************
;; Defined at:
;;		line 629 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    3[COMRAM] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr2l, fsr2h, status,2, status,0, prodl, prodh
;; Tracked objects:
;;		On entry : F/0
;;		On exit  : F/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_GetChSampPluse
;; This function uses a non-reentrant model
;;
psect	text31,class=CODE,space=0,reloc=2
global __ptext31
__ptext31:
psect	text31
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	629
	global	__size_of_PulseErrSet
	__size_of_PulseErrSet	equ	__end_of_PulseErrSet-_PulseErrSet
	
_PulseErrSet:; BSR set to: 0

	opt	stack 23
;PulseErrSet@ch stored from wreg
	movff	wreg,(c:PulseErrSet@ch)
	line	630
	
l2547:; BSR set to: 0

;CoilDet-V0.0.C: 630: if(det_pluse_counter[ch] < 0x0005)
	movf	((c:PulseErrSet@ch)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_det_pluse_counter)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_PulseErrSet+0+0
	movff	postdec2,??_PulseErrSet+0+0+1
	movlw	05h
	subwf	(??_PulseErrSet+0+0),c,w
	movlw	0
	subwfb	(??_PulseErrSet+0+1),c,w
	btfsc	status,0
	goto	u1581
	goto	u1580
u1581:
	goto	l2557
u1580:
	line	632
	
l2549:; BSR set to: 0

;CoilDet-V0.0.C: 631: {
;CoilDet-V0.0.C: 632: det_enable &= (~(0x01 <<ch));
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	movlw	(01h)&0ffh
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	incf	(??_PulseErrSet+0+0),c
	goto	u1594
u1595:
	bcf	status,0
	rlcf	((??_PulseErrSet+1+0)),c
u1594:
	decfsz	(??_PulseErrSet+0+0),c
	goto	u1595
	movf	((??_PulseErrSet+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_det_enable)),c
	line	634
	
l2551:; BSR set to: 0

;CoilDet-V0.0.C: 634: if(ch%2 == 0x00)
	
	btfsc	((c:PulseErrSet@ch)),c,(0)&7
	goto	u1601
	goto	u1600
u1601:
	goto	l2555
u1600:
	line	636
	
l2553:; BSR set to: 0

;CoilDet-V0.0.C: 635: {
;CoilDet-V0.0.C: 636: det_status[ch/2] |= (((det_status[ch/2] & 0xf0) | 0x08)|0X01);
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	bcf	status,0
	rrcf	(??_PulseErrSet+0+0),c

	movf	(??_PulseErrSet+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	movlw	0F0h
	andwf	((??_PulseErrSet+1+0)),c
	movlw	09h
	iorwf	((??_PulseErrSet+1+0)),c
	movff	(c:PulseErrSet@ch),??_PulseErrSet+2+0
	bcf	status,0
	rrcf	(??_PulseErrSet+2+0),c

	movf	(??_PulseErrSet+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	indf2
	line	637
;CoilDet-V0.0.C: 637: }
	goto	l612
	line	640
	
l2555:; BSR set to: 0

;CoilDet-V0.0.C: 638: else
;CoilDet-V0.0.C: 639: {
;CoilDet-V0.0.C: 640: det_status[ch/2] |= (((det_status[ch/2] & 0x0f) | 0x80)|(0X01<<4));
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	bcf	status,0
	rrcf	(??_PulseErrSet+0+0),c

	movf	(??_PulseErrSet+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	movlw	0Fh
	andwf	((??_PulseErrSet+1+0)),c
	movlw	090h
	iorwf	((??_PulseErrSet+1+0)),c
	movff	(c:PulseErrSet@ch),??_PulseErrSet+2+0
	bcf	status,0
	rrcf	(??_PulseErrSet+2+0),c

	movf	(??_PulseErrSet+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	indf2
	goto	l612
	line	646
	
l2557:; BSR set to: 0

;CoilDet-V0.0.C: 646: else if (det_pluse_counter[ch] < 0x0064)
	movf	((c:PulseErrSet@ch)),c,w
	mullw	02h
	movf	(prodl),c,w
	addlw	low(_det_pluse_counter)
	movwf	fsr2l
	clrf	fsr2h
	movff	postinc2,??_PulseErrSet+0+0
	movff	postdec2,??_PulseErrSet+0+0+1
	movlw	064h
	subwf	(??_PulseErrSet+0+0),c,w
	movlw	0
	subwfb	(??_PulseErrSet+0+1),c,w
	btfsc	status,0
	goto	u1611
	goto	u1610
u1611:
	goto	l2567
u1610:
	line	650
	
l2559:; BSR set to: 0

;CoilDet-V0.0.C: 647: {
;CoilDet-V0.0.C: 650: det_enable &= (~(0x01 <<ch));
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	movlw	(01h)&0ffh
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	incf	(??_PulseErrSet+0+0),c
	goto	u1624
u1625:
	bcf	status,0
	rlcf	((??_PulseErrSet+1+0)),c
u1624:
	decfsz	(??_PulseErrSet+0+0),c
	goto	u1625
	movf	((??_PulseErrSet+1+0)),c,w
	xorlw	0ffh
	andwf	((c:_det_enable)),c
	line	651
	
l2561:; BSR set to: 0

;CoilDet-V0.0.C: 651: if(ch%2 == 0x00)
	
	btfsc	((c:PulseErrSet@ch)),c,(0)&7
	goto	u1631
	goto	u1630
u1631:
	goto	l2565
u1630:
	line	653
	
l2563:; BSR set to: 0

;CoilDet-V0.0.C: 652: {
;CoilDet-V0.0.C: 653: det_status[ch/2] |= (((det_status[ch/2] & 0xf0) | 0x08)|0X02);
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	bcf	status,0
	rrcf	(??_PulseErrSet+0+0),c

	movf	(??_PulseErrSet+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	movlw	0F0h
	andwf	((??_PulseErrSet+1+0)),c
	movlw	0Ah
	iorwf	((??_PulseErrSet+1+0)),c
	movff	(c:PulseErrSet@ch),??_PulseErrSet+2+0
	bcf	status,0
	rrcf	(??_PulseErrSet+2+0),c

	movf	(??_PulseErrSet+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	indf2
	line	654
;CoilDet-V0.0.C: 654: }
	goto	l612
	line	657
	
l2565:; BSR set to: 0

;CoilDet-V0.0.C: 655: else
;CoilDet-V0.0.C: 656: {
;CoilDet-V0.0.C: 657: det_status[ch/2] |= (((det_status[ch/2] & 0x0f) | 0x80)|(0X02<<4));
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	bcf	status,0
	rrcf	(??_PulseErrSet+0+0),c

	movf	(??_PulseErrSet+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	movlw	0Fh
	andwf	((??_PulseErrSet+1+0)),c
	movlw	0A0h
	iorwf	((??_PulseErrSet+1+0)),c
	movff	(c:PulseErrSet@ch),??_PulseErrSet+2+0
	bcf	status,0
	rrcf	(??_PulseErrSet+2+0),c

	movf	(??_PulseErrSet+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	indf2
	goto	l612
	line	663
	
l2567:; BSR set to: 0

;CoilDet-V0.0.C: 660: else
;CoilDet-V0.0.C: 661: {
;CoilDet-V0.0.C: 663: det_enable |= (0x01 <<ch);
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	movlw	(01h)&0ffh
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	incf	(??_PulseErrSet+0+0),c
	goto	u1644
u1645:
	bcf	status,0
	rlcf	((??_PulseErrSet+1+0)),c
u1644:
	decfsz	(??_PulseErrSet+0+0),c
	goto	u1645
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	((c:_det_enable)),c
	line	664
	
l2569:; BSR set to: 0

;CoilDet-V0.0.C: 664: if(ch%2 == 0x00)
	
	btfsc	((c:PulseErrSet@ch)),c,(0)&7
	goto	u1651
	goto	u1650
u1651:
	goto	l2573
u1650:
	line	666
	
l2571:; BSR set to: 0

;CoilDet-V0.0.C: 665: {
;CoilDet-V0.0.C: 666: det_status[ch/2] |= (((det_status[ch/2] & 0xf0) | 0x08)|0x00);
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	bcf	status,0
	rrcf	(??_PulseErrSet+0+0),c

	movf	(??_PulseErrSet+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	movlw	0F0h
	andwf	((??_PulseErrSet+1+0)),c
	movlw	08h
	iorwf	((??_PulseErrSet+1+0)),c
	movff	(c:PulseErrSet@ch),??_PulseErrSet+2+0
	bcf	status,0
	rrcf	(??_PulseErrSet+2+0),c

	movf	(??_PulseErrSet+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	indf2
	line	667
;CoilDet-V0.0.C: 667: }
	goto	l612
	line	670
	
l2573:; BSR set to: 0

;CoilDet-V0.0.C: 668: else
;CoilDet-V0.0.C: 669: {
;CoilDet-V0.0.C: 670: det_status[ch/2] |= (((det_status[ch/2] & 0x0f) | 0x80)|(0x00<<4));
	movff	(c:PulseErrSet@ch),??_PulseErrSet+0+0
	bcf	status,0
	rrcf	(??_PulseErrSet+0+0),c

	movf	(??_PulseErrSet+0+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	indf2,w
	movwf	(??_PulseErrSet+1+0)&0ffh,c
	movlw	0Fh
	andwf	((??_PulseErrSet+1+0)),c
	movlw	080h
	iorwf	((??_PulseErrSet+1+0)),c
	movff	(c:PulseErrSet@ch),??_PulseErrSet+2+0
	bcf	status,0
	rrcf	(??_PulseErrSet+2+0),c

	movf	(??_PulseErrSet+2+0),c,w
	addlw	low((c:_det_status))
	movwf	fsr2l
	clrf	fsr2h
	movf	((??_PulseErrSet+1+0)),c,w
	iorwf	indf2
	line	673
	
l612:; BSR set to: 0

	return
	opt stack 0
GLOBAL	__end_of_PulseErrSet
	__end_of_PulseErrSet:
	signat	_PulseErrSet,4216
	global	_DTRest

;; *************** function _DTRest *****************
;; Defined at:
;;		line 1361 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TransportDataProcess
;; This function uses a non-reentrant model
;;
psect	text32,class=CODE,space=0,reloc=2
global __ptext32
__ptext32:
psect	text32
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	1361
	global	__size_of_DTRest
	__size_of_DTRest	equ	__end_of_DTRest-_DTRest
	
_DTRest:; BSR set to: 0

	opt	stack 26
	line	1362
;CoilDet-V0.0.C: 1362: while(1);
	
l758:
	
l759:
	goto	l758
	return
	opt stack 0
psect	text33,class=CODE,space=0,reloc=2
global __ptext33
__ptext33:
	line	1363
GLOBAL	__end_of_DTRest
	__end_of_DTRest:
	signat	_DTRest,88
	global	_IntServer

;; *************** function _IntServer *****************
;; Defined at:
;;		line 365 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_DataTransferIntServer
;;		_TMR0IntServer
;;		_TMR1IntServer
;;		_TMR3IntServer
;; This function is called by:
;;		Interrupt level 2
;; This function uses a non-reentrant model
;;
psect	intcode,class=CODE,space=0,reloc=2
global __pintcode
__pintcode:
psect	intcode
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	365
	global	__size_of_IntServer
	__size_of_IntServer	equ	__end_of_IntServer-_IntServer
	
_IntServer:
	opt	stack 23
	line	367
	
i2l2239:
;CoilDet-V0.0.C: 367: if(SSPIE && SSPIF)
	btfss	c:(31979/8),(31979)&7	;volatile
	goto	i2u127_41
	goto	i2u127_40
i2u127_41:
	goto	i2l2247
i2u127_40:
	
i2l2241:
	btfss	c:(31987/8),(31987)&7	;volatile
	goto	i2u128_41
	goto	i2u128_40
i2u128_41:
	goto	i2l2247
i2u128_40:
	line	369
	
i2l2243:
;CoilDet-V0.0.C: 368: {
;CoilDet-V0.0.C: 369: SSPIF = 0;
	bcf	c:(31987/8),(31987)&7	;volatile
	line	370
;CoilDet-V0.0.C: 370: BF = 0;
	bcf	c:(32312/8),(32312)&7	;volatile
	line	371
	
i2l2245:
;CoilDet-V0.0.C: 371: DataTransferIntServer();
	call	_DataTransferIntServer	;wreg free
	line	375
	
i2l2247:
;CoilDet-V0.0.C: 372: }
;CoilDet-V0.0.C: 375: if(TMR0IE && TMR0IF)
	btfss	c:(32661/8),(32661)&7	;volatile
	goto	i2u129_41
	goto	i2u129_40
i2u129_41:
	goto	i2l2255
i2u129_40:
	
i2l2249:
	btfss	c:(32658/8),(32658)&7	;volatile
	goto	i2u130_41
	goto	i2u130_40
i2u130_41:
	goto	i2l2255
i2u130_40:
	line	378
	
i2l2251:
;CoilDet-V0.0.C: 376: {
;CoilDet-V0.0.C: 378: TMR0IF = 0;
	bcf	c:(32658/8),(32658)&7	;volatile
	line	379
	
i2l2253:
;CoilDet-V0.0.C: 379: TMR0IntServer();
	call	_TMR0IntServer	;wreg free
	line	382
	
i2l2255:
;CoilDet-V0.0.C: 380: }
;CoilDet-V0.0.C: 382: if(TMR1IE && TMR1IF)
	btfss	c:(31976/8),(31976)&7	;volatile
	goto	i2u131_41
	goto	i2u131_40
i2u131_41:
	goto	i2l2263
i2u131_40:
	
i2l2257:
	btfss	c:(31984/8),(31984)&7	;volatile
	goto	i2u132_41
	goto	i2u132_40
i2u132_41:
	goto	i2l2263
i2u132_40:
	line	385
	
i2l2259:
;CoilDet-V0.0.C: 383: {
;CoilDet-V0.0.C: 385: TMR1IF = 0;
	bcf	c:(31984/8),(31984)&7	;volatile
	line	386
	
i2l2261:
;CoilDet-V0.0.C: 386: TMR1IntServer();
	call	_TMR1IntServer	;wreg free
	line	389
	
i2l2263:
;CoilDet-V0.0.C: 387: }
;CoilDet-V0.0.C: 389: if(TMR3IE && TMR3IF)
	btfss	c:(32001/8),(32001)&7	;volatile
	goto	i2u133_41
	goto	i2u133_40
i2u133_41:
	goto	i2l567
i2u133_40:
	
i2l2265:
	btfss	c:(32009/8),(32009)&7	;volatile
	goto	i2u134_41
	goto	i2u134_40
i2u134_41:
	goto	i2l567
i2u134_40:
	line	392
	
i2l2267:
;CoilDet-V0.0.C: 390: {
;CoilDet-V0.0.C: 392: TMR3IF = 0;
	bcf	c:(32009/8),(32009)&7	;volatile
	line	393
	
i2l2269:
;CoilDet-V0.0.C: 393: TMR3IntServer();
	call	_TMR3IntServer	;wreg free
	line	397
	
i2l567:
	retfie f
	opt stack 0
GLOBAL	__end_of_IntServer
	__end_of_IntServer:
	signat	_IntServer,88
	global	_TMR0IntServer

;; *************** function _TMR0IntServer *****************
;; Defined at:
;;		line 202 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntServer
;; This function uses a non-reentrant model
;;
psect	text34,class=CODE,space=0,reloc=2
global __ptext34
__ptext34:
psect	text34
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	202
	global	__size_of_TMR0IntServer
	__size_of_TMR0IntServer	equ	__end_of_TMR0IntServer-_TMR0IntServer
	
_TMR0IntServer:
	opt	stack 23
	line	211
	
i2l1559:
;CoilDet-V0.0.C: 211: time0_int = 1;
	movlb	(_time0_int/8) >> 8
	bsf	(_time0_int/8),c,(_time0_int)&7
	line	212
	
i2l544:
	return
	opt stack 0
GLOBAL	__end_of_TMR0IntServer
	__end_of_TMR0IntServer:
	signat	_TMR0IntServer,88
	global	_TMR1IntServer

;; *************** function _TMR1IntServer *****************
;; Defined at:
;;		line 216 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntServer
;; This function uses a non-reentrant model
;;
psect	text35,class=CODE,space=0,reloc=2
global __ptext35
__ptext35:
psect	text35
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	216
	global	__size_of_TMR1IntServer
	__size_of_TMR1IntServer	equ	__end_of_TMR1IntServer-_TMR1IntServer
	
_TMR1IntServer:
	opt	stack 23
	line	218
	
i2l1561:
;CoilDet-V0.0.C: 218: TMR1H = 0x3c;
	movlw	low(03Ch)
	movwf	((c:4047)),c	;volatile
	line	219
;CoilDet-V0.0.C: 221: t1_cont++;
	movlw	low(0AFh)
	movwf	((c:4046)),c	;volatile
	line	223
	
i2l547:
	return
	opt stack 0
GLOBAL	__end_of_TMR1IntServer
	__end_of_TMR1IntServer:
	signat	_TMR1IntServer,88
	global	_TMR3IntServer

;; *************** function _TMR3IntServer *****************
;; Defined at:
;;		line 227 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFF0/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntServer
;; This function uses a non-reentrant model
;;
psect	text36,class=CODE,space=0,reloc=2
global __ptext36
__ptext36:
psect	text36
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	227
	global	__size_of_TMR3IntServer
	__size_of_TMR3IntServer	equ	__end_of_TMR3IntServer-_TMR3IntServer
	
_TMR3IntServer:
	opt	stack 23
	line	228
	
i2l1563:
;CoilDet-V0.0.C: 228: TMR0ON = 0;
	bcf	c:(32431/8),(32431)&7	;volatile
	line	229
;CoilDet-V0.0.C: 229: time3_int = 1;
	movlb	(_time3_int/8) >> 8
	bsf	(_time3_int/8),c,(_time3_int)&7
	line	230
	
i2l550:
	return
	opt stack 0
GLOBAL	__end_of_TMR3IntServer
	__end_of_TMR3IntServer:
	signat	_TMR3IntServer,88
	global	_DataTransferIntServer

;; *************** function _DataTransferIntServer *****************
;; Defined at:
;;		line 243 in file "E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  tempdata        1    0        unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: FFFFFFFF/0
;; Data sizes:     COMRAM   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6   BANK7   BANK8   BANK9  BANK10  BANK11  BANK12  BANK13  BANK14
;;      Params:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0       0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_IntServer
;; This function uses a non-reentrant model
;;
psect	text37,class=CODE,space=0,reloc=2
global __ptext37
__ptext37:
psect	text37
	file	"E:\working\coil\coil-v0.0-14\CoilDet\CoilDet-V0.0.C"
	line	243
	global	__size_of_DataTransferIntServer
	__size_of_DataTransferIntServer	equ	__end_of_DataTransferIntServer-_DataTransferIntServer
	
_DataTransferIntServer:
	opt	stack 23
	line	250
	
i2l1565:
;CoilDet-V0.0.C: 250: tempdata = SSPBUF;
	movf	((c:4041)),c,w	;volatile
	line	251
	
i2l1567:
;CoilDet-V0.0.C: 251: SSPOV = 0;
	bcf	c:(32310/8),(32310)&7	;volatile
	line	252
	
i2l1569:
;CoilDet-V0.0.C: 252: WCOL = 0;
	bcf	c:(32311/8),(32311)&7	;volatile
	line	254
	
i2l1571:
;CoilDet-V0.0.C: 254: SSPBUF = buf_p++;
	movff	(c:DataTransferIntServer@buf_p),(c:4041)	;volatile
	
i2l1573:
;CoilDet-V0.0.C: 259: DT_timeout = 0x00;
	incf	((c:DataTransferIntServer@buf_p)),c
	line	360
	
i2l560:
	return
	opt stack 0
GLOBAL	__end_of_DataTransferIntServer
	__end_of_DataTransferIntServer:
	signat	_DataTransferIntServer,88
	GLOBAL	__activetblptr
__activetblptr	EQU	0
	psect	intsave_regs,class=BIGRAM,space=1
psect	text38,class=CODE,space=0,reloc=2
global __ptext38
__ptext38:
	PSECT	rparam,class=COMRAM,space=1
	GLOBAL	__Lrparam
	FNCONF	rparam,??,?
GLOBAL	__Lparam, __Hparam
GLOBAL	__Lrparam, __Hrparam
__Lparam	EQU	__Lrparam
__Hparam	EQU	__Hrparam
	end
