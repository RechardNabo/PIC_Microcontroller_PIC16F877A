opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 9453"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_PWM_SETUP
	FNCALL	_main,_ADC_INIT
	FNCALL	_main,_LCD_SETUP_4BIT
	FNCALL	_main,_LCD_INITIALIZE_4BIT
	FNCALL	_main,_LCD_INSTRUCTION_4BIT
	FNCALL	_main,_LCD_DISPLAY
	FNCALL	_main,_ADC_READ
	FNCALL	_main,___lwtoft
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_LCD_DATA
	FNCALL	_main,_PWM1_DUTY
	FNCALL	_PWM_SETUP,_PWM1_INITIALIZE
	FNCALL	_PWM_SETUP,_PWM2_INITIALIZE
	FNCALL	_PWM_SETUP,_PWM1_DUTY
	FNCALL	_PWM_SETUP,_PWM2_DUTY
	FNCALL	_PWM_SETUP,_PWM1_START
	FNCALL	_PWM_SETUP,_PWM2_START
	FNCALL	_LCD_DISPLAY,_strlen
	FNCALL	_LCD_DISPLAY,_LCD_DATA
	FNCALL	_LCD_INITIALIZE_4BIT,_LCD_INSTRUCTION_4BIT
	FNCALL	_PWM2_DUTY,___lwtoft
	FNCALL	_PWM2_DUTY,___ftdiv
	FNCALL	_PWM2_DUTY,_PWM_MAX_DUTY
	FNCALL	_PWM2_DUTY,___awtoft
	FNCALL	_PWM2_DUTY,___ftmul
	FNCALL	_PWM2_DUTY,___fttol
	FNCALL	_PWM1_DUTY,___lwtoft
	FNCALL	_PWM1_DUTY,___ftdiv
	FNCALL	_PWM1_DUTY,_PWM_MAX_DUTY
	FNCALL	_PWM1_DUTY,___awtoft
	FNCALL	_PWM1_DUTY,___ftmul
	FNCALL	_PWM1_DUTY,___fttol
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_PWM2_INITIALIZE,___aldiv
	FNCALL	_PWM1_INITIALIZE,___aldiv
	FNCALL	_PWM_MAX_DUTY,___aldiv
	FNROOT	_main
	global	_ADCON0
psect	text626,local,class=CODE,delta=2
global __ptext626
__ptext626:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCPR1L
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_CARRY
_CARRY	set	24
	global	_CCP1M2
_CCP1M2	set	186
	global	_CCP1M3
_CCP1M3	set	187
	global	_CCP1X
_CCP1X	set	189
	global	_CCP1Y
_CCP1Y	set	188
	global	_CCP2M2
_CCP2M2	set	234
	global	_CCP2M3
_CCP2M3	set	235
	global	_CCP2X
_CCP2X	set	237
	global	_CCP2Y
_CCP2Y	set	236
	global	_GIE
_GIE	set	95
	global	_GO_nDONE
_GO_nDONE	set	250
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_PR2
_PR2	set	146
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISB3
_TRISB3	set	1075
	global	_TRISB4
_TRISB4	set	1076
	global	_TRISB5
_TRISB5	set	1077
	global	_TRISB6
_TRISB6	set	1078
	global	_TRISB7
_TRISB7	set	1079
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
	global	_Frequency
psect	nvBANK1,class=BANK1,space=1
global __pnvBANK1
__pnvBANK1:
_Frequency:
       ds      4

psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	86	;'V'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"PWM_CONTROL_MOTOR2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_PWM1_START
?_PWM1_START:	; 0 bytes @ 0x0
	global	??_PWM1_START
??_PWM1_START:	; 0 bytes @ 0x0
	global	?_PWM2_START
?_PWM2_START:	; 0 bytes @ 0x0
	global	??_PWM2_START
??_PWM2_START:	; 0 bytes @ 0x0
	global	?_PWM_SETUP
?_PWM_SETUP:	; 0 bytes @ 0x0
	global	?_LCD_SETUP_4BIT
?_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	??_LCD_SETUP_4BIT
??_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DATA
?_LCD_DATA:	; 0 bytes @ 0x0
	global	?_LCD_INSTRUCTION_4BIT
?_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	??_LCD_INSTRUCTION_4BIT
??_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_INITIALIZE_4BIT
?_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DISPLAY
?_LCD_DISPLAY:	; 0 bytes @ 0x0
	global	?_ADC_INIT
?_ADC_INIT:	; 0 bytes @ 0x0
	global	??_ADC_INIT
??_ADC_INIT:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?_ADC_READ
?_ADC_READ:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	LCD_DATA@mode
LCD_DATA@mode:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	2
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
	global	??_LCD_DATA
??_LCD_DATA:	; 0 bytes @ 0x2
	global	??_ADC_READ
??_ADC_READ:	; 0 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	ADC_READ@channel
ADC_READ@channel:	; 1 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	??_LCD_INITIALIZE_4BIT
??_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x5
	ds	3
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
	global	strlen@s
strlen@s:	; 1 bytes @ 0x8
	ds	1
	global	??_PWM1_INITIALIZE
??_PWM1_INITIALIZE:	; 0 bytes @ 0x9
	global	??_PWM2_INITIALIZE
??_PWM2_INITIALIZE:	; 0 bytes @ 0x9
	global	??___fttol
??___fttol:	; 0 bytes @ 0x9
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x9
	ds	1
	global	??_LCD_DISPLAY
??_LCD_DISPLAY:	; 0 bytes @ 0xA
	ds	3
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xD
	global	??___awmod
??___awmod:	; 0 bytes @ 0xD
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	??_PWM_SETUP
??_PWM_SETUP:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	LCD_INSTRUCTION_4BIT@instruction
LCD_INSTRUCTION_4BIT@instruction:	; 1 bytes @ 0x0
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	global	LCD_DATA@_8bit_
LCD_DATA@_8bit_:	; 16 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	global	LCD_INSTRUCTION_4BIT@_4bit_
LCD_INSTRUCTION_4BIT@_4bit_:	; 8 bytes @ 0x1
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	4
	global	?_PWM1_INITIALIZE
?_PWM1_INITIALIZE:	; 0 bytes @ 0x6
	global	?_PWM2_INITIALIZE
?_PWM2_INITIALIZE:	; 0 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	global	PWM1_INITIALIZE@frequency
PWM1_INITIALIZE@frequency:	; 4 bytes @ 0x6
	global	PWM2_INITIALIZE@frequency
PWM2_INITIALIZE@frequency:	; 4 bytes @ 0x6
	ds	3
	global	LCD_INSTRUCTION_4BIT@data
LCD_INSTRUCTION_4BIT@data:	; 1 bytes @ 0x9
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xA
	global	LCD_INSTRUCTION_4BIT@x
LCD_INSTRUCTION_4BIT@x:	; 2 bytes @ 0xA
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xB
	ds	1
	global	LCD_INSTRUCTION_4BIT@x_1271
LCD_INSTRUCTION_4BIT@x_1271:	; 2 bytes @ 0xC
	ds	3
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xF
	ds	1
	global	?_PWM_MAX_DUTY
?_PWM_MAX_DUTY:	; 2 bytes @ 0x10
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x10
	global	?___awmod
?___awmod:	; 2 bytes @ 0x10
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x10
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x10
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x10
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x10
	global	LCD_DATA@_4bit_
LCD_DATA@_4bit_:	; 8 bytes @ 0x10
	ds	2
	global	??_PWM_MAX_DUTY
??_PWM_MAX_DUTY:	; 0 bytes @ 0x12
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x12
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x12
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x13
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x13
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x14
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x14
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x15
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x15
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x16
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x16
	ds	2
	global	LCD_DATA@data
LCD_DATA@data:	; 1 bytes @ 0x18
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x19
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x19
	global	LCD_DATA@_data
LCD_DATA@_data:	; 1 bytes @ 0x19
	ds	1
	global	LCD_DATA@x
LCD_DATA@x:	; 2 bytes @ 0x1A
	ds	2
	global	LCD_DATA@x_1264
LCD_DATA@x_1264:	; 2 bytes @ 0x1C
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1D
	ds	1
	global	LCD_DATA@v
LCD_DATA@v:	; 2 bytes @ 0x1E
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1E
	ds	2
	global	LCD_DISPLAY@length
LCD_DISPLAY@length:	; 2 bytes @ 0x20
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x21
	ds	1
	global	LCD_DISPLAY@string
LCD_DISPLAY@string:	; 1 bytes @ 0x22
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x22
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x23
	global	LCD_DISPLAY@x
LCD_DISPLAY@x:	; 2 bytes @ 0x23
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x26
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x29
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2D
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2E
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x31
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x32
	ds	1
	global	?_PWM1_DUTY
?_PWM1_DUTY:	; 0 bytes @ 0x33
	global	?_PWM2_DUTY
?_PWM2_DUTY:	; 0 bytes @ 0x33
	global	PWM1_DUTY@duty
PWM1_DUTY@duty:	; 2 bytes @ 0x33
	global	PWM2_DUTY@duty
PWM2_DUTY@duty:	; 2 bytes @ 0x33
	ds	2
	global	??_PWM1_DUTY
??_PWM1_DUTY:	; 0 bytes @ 0x35
	global	??_PWM2_DUTY
??_PWM2_DUTY:	; 0 bytes @ 0x35
	ds	2
	global	_PWM1_DUTY$1244
_PWM1_DUTY$1244:	; 1 bytes @ 0x37
	global	_PWM2_DUTY$1248
_PWM2_DUTY$1248:	; 1 bytes @ 0x37
	ds	1
	global	_PWM1_DUTY$1245
_PWM1_DUTY$1245:	; 1 bytes @ 0x38
	global	_PWM2_DUTY$1249
_PWM2_DUTY$1249:	; 1 bytes @ 0x38
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x39
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x3B
	ds	2
	global	main@ADC
main@ADC:	; 3 bytes @ 0x3D
	ds	3
	global	main@b
main@b:	; 2 bytes @ 0x40
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x42
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x44
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0x46
	ds	2
	global	main@temperature
main@temperature:	; 3 bytes @ 0x48
	ds	3
	global	main@d
main@d:	; 2 bytes @ 0x4B
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x4D
	ds	2
;;Data sizes: Strings 9, constant 0, data 0, bss 0, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     79      79
;; BANK1           80      0       4
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?_ADC_READ	unsigned int  size(1) Largest target is 0
;;
;; ?_strlen	unsigned int  size(1) Largest target is 9
;;		 -> STR_1(CODE[9]), 
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?_PWM_MAX_DUTY	int  size(1) Largest target is 4
;;		 -> Frequency(BANK1[4]), 
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;
;; strlen@s	PTR const unsigned char  size(1) Largest target is 9
;;		 -> STR_1(CODE[9]), 
;;
;; strlen@cp	PTR const unsigned char  size(1) Largest target is 9
;;		 -> STR_1(CODE[9]), 
;;
;; LCD_DISPLAY@string	PTR const unsigned char  size(1) Largest target is 9
;;		 -> STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___lwtoft
;;   _main->___awdiv
;;   _main->___awmod
;;   _LCD_DISPLAY->_strlen
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
;;   _PWM2_DUTY->___lwtoft
;;   _PWM2_DUTY->___awtoft
;;   _PWM1_DUTY->___lwtoft
;;   _PWM1_DUTY->___awtoft
;;   ___lwtoft->___fttol
;;   ___awtoft->___fttol
;;   ___ftmul->___lwtoft
;;   ___ftmul->___awtoft
;;   ___ftdiv->___lwtoft
;;   _PWM2_INITIALIZE->___aldiv
;;   _PWM1_INITIALIZE->___aldiv
;;   _PWM_MAX_DUTY->___fttol
;;   ___awmod->___fttol
;;   ___awdiv->___fttol
;;   ___fttol->___aldiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_PWM1_DUTY
;;   _PWM_SETUP->_PWM1_DUTY
;;   _PWM_SETUP->_PWM2_DUTY
;;   _LCD_DISPLAY->_LCD_DATA
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
;;   _PWM2_DUTY->___ftmul
;;   _PWM1_DUTY->___ftmul
;;   ___lwtoft->___fttol
;;   ___awtoft->_PWM_MAX_DUTY
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___lwtoft
;;   _PWM2_INITIALIZE->___aldiv
;;   _PWM1_INITIALIZE->___aldiv
;;   _PWM_MAX_DUTY->___fttol
;;   ___awmod->___fttol
;;   ___awdiv->___fttol
;;   ___fttol->___aldiv
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                22    22      0   13148
;;                                             57 BANK0     22    22      0
;;                          _PWM_SETUP
;;                           _ADC_INIT
;;                     _LCD_SETUP_4BIT
;;                _LCD_INITIALIZE_4BIT
;;               _LCD_INSTRUCTION_4BIT
;;                        _LCD_DISPLAY
;;                           _ADC_READ
;;                           ___lwtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                           _LCD_DATA
;;                          _PWM1_DUTY
;; ---------------------------------------------------------------------------------
;; (1) _PWM_SETUP                                            0     0      0    5176
;;                    _PWM1_INITIALIZE
;;                    _PWM2_INITIALIZE
;;                          _PWM1_DUTY
;;                          _PWM2_DUTY
;;                         _PWM1_START
;;                         _PWM2_START
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DISPLAY                                          5     5      0    1177
;;                                             32 BANK0      5     5      0
;;                             _strlen
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INITIALIZE_4BIT                                  0     0      0     567
;;               _LCD_INSTRUCTION_4BIT
;; ---------------------------------------------------------------------------------
;; (2) _PWM2_DUTY                                            6     4      2    2266
;;                                             51 BANK0      6     4      2
;;                           ___lwtoft
;;                            ___ftdiv
;;                       _PWM_MAX_DUTY
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _PWM1_DUTY                                            6     4      2    2266
;;                                             51 BANK0      6     4      2
;;                           ___lwtoft
;;                            ___ftdiv
;;                       _PWM_MAX_DUTY
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     231
;;                                             13 COMMON     1     1      0
;;                                             16 BANK0      3     0      3
;;                           ___ftpack
;;                           _ADC_READ (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             13 COMMON     1     1      0
;;                                             22 BANK0      5     2      3
;;                           ___ftpack
;;                       _PWM_MAX_DUTY (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             35 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___lwtoft (ARG)
;;                           ___awtoft (ARG)
;;                       _PWM_MAX_DUTY (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                             19 BANK0     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                           _ADC_READ (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _ADC_READ                                             5     3      2      44
;;                                              0 COMMON     5     3      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INSTRUCTION_4BIT                                19    19      0     567
;;                                              0 COMMON     5     5      0
;;                                              0 BANK0     14    14      0
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DATA                                            39    37      2     975
;;                                              0 COMMON     7     5      2
;;                                              0 BANK0     32    32      0
;; ---------------------------------------------------------------------------------
;; (2) _PWM2_INITIALIZE                                      8     4      4     322
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0      4     0      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (2) _PWM1_INITIALIZE                                      8     4      4     322
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0      4     0      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (2) _PWM_MAX_DUTY                                         6     4      2     300
;;                                             16 BANK0      6     4      2
;;                            ___aldiv
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                             13 COMMON     1     1      0
;;                                             16 BANK0      6     2      4
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___aldiv                                             15     7      8     300
;;                                              0 COMMON     9     1      8
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                             13 COMMON     1     1      0
;;                                             16 BANK0      8     4      4
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0     10     6      4
;;                           ___ftpack (ARG)
;;                            ___aldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) _ADC_INIT                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _strlen                                              10     8      2      89
;;                                              0 COMMON    10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SETUP_4BIT                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _PWM2_START                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _PWM1_START                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _PWM_SETUP
;;     _PWM1_INITIALIZE
;;       ___aldiv
;;     _PWM2_INITIALIZE
;;       ___aldiv
;;     _PWM1_DUTY
;;       ___lwtoft
;;         ___ftpack
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftdiv
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_MAX_DUTY
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft
;;         ___ftpack
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;             _ADC_READ (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           _PWM_MAX_DUTY (ARG)
;;             ___aldiv
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM2_DUTY
;;       ___lwtoft
;;         ___ftpack
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftdiv
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_MAX_DUTY
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft
;;         ___ftpack
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;             _ADC_READ (ARG)
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           _PWM_MAX_DUTY (ARG)
;;             ___aldiv
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM1_START
;;     _PWM2_START
;;   _ADC_INIT
;;   _LCD_SETUP_4BIT
;;   _LCD_INITIALIZE_4BIT
;;     _LCD_INSTRUCTION_4BIT
;;   _LCD_INSTRUCTION_4BIT
;;   _LCD_DISPLAY
;;     _strlen
;;     _LCD_DATA
;;   _ADC_READ
;;   ___lwtoft
;;     ___ftpack
;;     _ADC_READ (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
;;   ___ftdiv
;;     ___ftpack
;;     ___lwtoft (ARG)
;;       ___ftpack
;;       _ADC_READ (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _ADC_READ (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___ftdiv (ARG)
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _ADC_READ (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___lwtoft (ARG)
;;       ___ftpack
;;       _ADC_READ (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       _PWM_MAX_DUTY (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM_MAX_DUTY (ARG)
;;       ___aldiv
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;     ___aldiv (ARG)
;;   ___awdiv
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
;;   ___awmod
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
;;   _LCD_DATA
;;   _PWM1_DUTY
;;     ___lwtoft
;;       ___ftpack
;;       _ADC_READ (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _ADC_READ (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM_MAX_DUTY
;;       ___aldiv
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___awtoft
;;       ___ftpack
;;       _PWM_MAX_DUTY (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           _ADC_READ (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         _ADC_READ (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_MAX_DUTY (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      61       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4F      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       4       7        5.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      65      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 10 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temperature     3   72[BANK0 ] float 
;;  ADC             3   61[BANK0 ] float 
;;  a               2   77[BANK0 ] int 
;;  d               2   75[BANK0 ] int 
;;  f               2   70[BANK0 ] int 
;;  e               2   68[BANK0 ] int 
;;  c               2   66[BANK0 ] int 
;;  b               2   64[BANK0 ] int 
;;  i               2   59[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      20       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      22       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_PWM_SETUP
;;		_ADC_INIT
;;		_LCD_SETUP_4BIT
;;		_LCD_INITIALIZE_4BIT
;;		_LCD_INSTRUCTION_4BIT
;;		_LCD_DISPLAY
;;		_ADC_READ
;;		___lwtoft
;;		___ftdiv
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_LCD_DATA
;;		_PWM1_DUTY
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\Main.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	11
	
l3993:	
;Main.c: 11: unsigned int i = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	14
	
l3995:	
;Main.c: 12: float ADC, temperature;
;Main.c: 13: int a,b,c,d,e,f;
;Main.c: 14: PWM_SETUP();
	fcall	_PWM_SETUP
	line	15
	
l3997:	
;Main.c: 15: ADC_INIT();
	fcall	_ADC_INIT
	line	16
	
l3999:	
;Main.c: 16: LCD_SETUP_4BIT();
	fcall	_LCD_SETUP_4BIT
	line	17
	
l4001:	
;Main.c: 17: LCD_INITIALIZE_4BIT();
	fcall	_LCD_INITIALIZE_4BIT
	goto	l4003
	line	19
;Main.c: 19: while(0x01){
	
l785:	
	line	20
	
l4003:	
;Main.c: 20: LCD_INSTRUCTION_4BIT(0x80);
	movlw	(080h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	21
	
l4005:	
;Main.c: 21: LCD_DISPLAY("Value : ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DISPLAY
	line	22
	
l4007:	
;Main.c: 22: LCD_INSTRUCTION_4BIT(0x89);
	movlw	(089h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	24
	
l4009:	
;Main.c: 24: ADC = (ADC_READ(4))/(2.046);
	movlw	0xf2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x2
	movwf	(?___ftdiv+1)
	movlw	0x40
	movwf	(?___ftdiv+2)
	movlw	(04h)
	fcall	_ADC_READ
	movf	(1+(?_ADC_READ)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(0+(?_ADC_READ)),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(main@ADC)
	movf	(1+(?___ftdiv)),w
	movwf	(main@ADC+1)
	movf	(2+(?___ftdiv)),w
	movwf	(main@ADC+2)
	line	25
	
l4011:	
;Main.c: 25: temperature = ADC * 100;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	movf	(main@ADC),w
	movwf	0+(?___ftmul)+03h
	movf	(main@ADC+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@ADC+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(main@temperature)
	movf	(1+(?___ftmul)),w
	movwf	(main@temperature+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@temperature+2)
	line	26
	
l4013:	
;Main.c: 26: a = (int)temperature / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@temperature),w
	movwf	(?___fttol)
	movf	(main@temperature+1),w
	movwf	(?___fttol+1)
	movf	(main@temperature+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	0+(((0+(?___fttol)))),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	27
	
l4015:	
;Main.c: 27: b = (int)temperature % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@temperature),w
	movwf	(?___fttol)
	movf	(main@temperature+1),w
	movwf	(?___fttol+1)
	movf	(main@temperature+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	0+(((0+(?___fttol)))),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	line	28
	
l4017:	
;Main.c: 28: c = a % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@a+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@a),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awmod)),w
	clrf	(main@c)
	addwf	(main@c)

	line	29
	
l4019:	
;Main.c: 29: d = a / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@a+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@a),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@d)
	addwf	(main@d)

	line	30
	
l4021:	
;Main.c: 30: e = d % 10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awmod)),w
	clrf	(main@e+1)
	addwf	(main@e+1)
	movf	(0+(?___awmod)),w
	clrf	(main@e)
	addwf	(main@e)

	line	31
	
l4023:	
;Main.c: 31: f = d / 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(main@f+1)
	addwf	(main@f+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@f)
	addwf	(main@f)

	line	32
	
l4025:	
;Main.c: 32: LCD_DATA(f+0x30,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	movf	(main@f),w
	addlw	030h
	fcall	_LCD_DATA
	line	33
	
l4027:	
;Main.c: 33: LCD_DATA(e+0x30,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@e),w
	addlw	030h
	fcall	_LCD_DATA
	line	34
	
l4029:	
;Main.c: 34: LCD_DATA('.',0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	movlw	(02Eh)
	fcall	_LCD_DATA
	line	35
	
l4031:	
;Main.c: 35: LCD_DATA(c+0x30,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@c),w
	addlw	030h
	fcall	_LCD_DATA
	line	36
	
l4033:	
;Main.c: 36: LCD_DATA(b+0x30,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@b),w
	addlw	030h
	fcall	_LCD_DATA
	line	38
	
l4035:	
;Main.c: 38: PWM1_DUTY(a-251);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	addlw	low(0FF05h)
	movwf	(?_PWM1_DUTY)
	movf	(main@a+1),w
	skipnc
	addlw	1
	addlw	high(0FF05h)
	movwf	1+(?_PWM1_DUTY)
	fcall	_PWM1_DUTY
	line	39
	
l4037:	
;Main.c: 39: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u5267:
	decfsz	((??_main+0)+0),f
	goto	u5267
	decfsz	((??_main+0)+0+1),f
	goto	u5267
	clrwdt
opt asmopt_on

	goto	l4003
	line	40
	
l786:	
	line	19
	goto	l4003
	
l787:	
	line	41
	
l788:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_PWM_SETUP
psect	text627,local,class=CODE,delta=2
global __ptext627
__ptext627:

;; *************** function _PWM_SETUP *****************
;; Defined at:
;;		line 92 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_PWM1_INITIALIZE
;;		_PWM2_INITIALIZE
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;;		_PWM1_START
;;		_PWM2_START
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text627
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	92
	global	__size_of_PWM_SETUP
	__size_of_PWM_SETUP	equ	__end_of_PWM_SETUP-_PWM_SETUP
	
_PWM_SETUP:	
	opt	stack 4
; Regs used in _PWM_SETUP: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l3987:	
;PWM_lib.h: 93: PWM1_INITIALIZE(5000);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM1_INITIALIZE+3)
	movlw	0
	movwf	(?_PWM1_INITIALIZE+2)
	movlw	013h
	movwf	(?_PWM1_INITIALIZE+1)
	movlw	088h
	movwf	(?_PWM1_INITIALIZE)

	fcall	_PWM1_INITIALIZE
	line	94
;PWM_lib.h: 94: PWM2_INITIALIZE(5000);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM2_INITIALIZE+3)
	movlw	0
	movwf	(?_PWM2_INITIALIZE+2)
	movlw	013h
	movwf	(?_PWM2_INITIALIZE+1)
	movlw	088h
	movwf	(?_PWM2_INITIALIZE)

	fcall	_PWM2_INITIALIZE
	line	95
;PWM_lib.h: 95: PWM1_DUTY(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM1_DUTY)
	movlw	high(0)
	movwf	((?_PWM1_DUTY))+1
	fcall	_PWM1_DUTY
	line	96
;PWM_lib.h: 96: PWM2_DUTY(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM2_DUTY)
	movlw	high(0)
	movwf	((?_PWM2_DUTY))+1
	fcall	_PWM2_DUTY
	line	97
	
l3989:	
;PWM_lib.h: 97: PWM1_START();
	fcall	_PWM1_START
	line	98
	
l3991:	
;PWM_lib.h: 98: PWM2_START();
	fcall	_PWM2_START
	line	99
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_SETUP
	__end_of_PWM_SETUP:
;; =============== function _PWM_SETUP ends ============

	signat	_PWM_SETUP,88
	global	_LCD_DISPLAY
psect	text628,local,class=CODE,delta=2
global __ptext628
__ptext628:

;; *************** function _LCD_DISPLAY *****************
;; Defined at:
;;		line 181 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  string          1   34[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(9), 
;;  x               2   35[BANK0 ] unsigned int 
;;  length          2   32[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_strlen
;;		_LCD_DATA
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text628
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
	line	181
	global	__size_of_LCD_DISPLAY
	__size_of_LCD_DISPLAY	equ	__end_of_LCD_DISPLAY-_LCD_DISPLAY
	
_LCD_DISPLAY:	
	opt	stack 5
; Regs used in _LCD_DISPLAY: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCD_DISPLAY@string stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DISPLAY@string)
	line	182
	
l3977:	
;LCD_SCREEN.h: 182: unsigned int length = strlen(string);
	movf	(LCD_DISPLAY@string),w
	fcall	_strlen
	movf	(1+(?_strlen)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCD_DISPLAY@length+1)
	addwf	(LCD_DISPLAY@length+1)
	movf	(0+(?_strlen)),w
	clrf	(LCD_DISPLAY@length)
	addwf	(LCD_DISPLAY@length)

	line	184
	
l3979:	
;LCD_SCREEN.h: 183: unsigned int x;
;LCD_SCREEN.h: 184: for(x = 0x00 ; x < length ; x-=-0x01){
	clrf	(LCD_DISPLAY@x)
	clrf	(LCD_DISPLAY@x+1)
	goto	l3985
	
l767:	
	line	185
	
l3981:	
;LCD_SCREEN.h: 185: LCD_DATA(string[x],0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	movf	(LCD_DISPLAY@x),w
	addwf	(LCD_DISPLAY@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DATA
	line	184
	
l3983:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_DISPLAY@x),f
	movlw	high(0FFFFh)
	skipc
	decf	(LCD_DISPLAY@x+1),f
	subwf	(LCD_DISPLAY@x+1),f
	goto	l3985
	
l766:	
	
l3985:	
	movf	(LCD_DISPLAY@length+1),w
	subwf	(LCD_DISPLAY@x+1),w
	skipz
	goto	u5255
	movf	(LCD_DISPLAY@length),w
	subwf	(LCD_DISPLAY@x),w
u5255:
	skipc
	goto	u5251
	goto	u5250
u5251:
	goto	l3981
u5250:
	goto	l769
	
l768:	
	line	187
	
l769:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DISPLAY
	__end_of_LCD_DISPLAY:
;; =============== function _LCD_DISPLAY ends ============

	signat	_LCD_DISPLAY,4216
	global	_LCD_INITIALIZE_4BIT
psect	text629,local,class=CODE,delta=2
global __ptext629
__ptext629:

;; *************** function _LCD_INITIALIZE_4BIT *****************
;; Defined at:
;;		line 165 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_LCD_INSTRUCTION_4BIT
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text629
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
	line	165
	global	__size_of_LCD_INITIALIZE_4BIT
	__size_of_LCD_INITIALIZE_4BIT	equ	__end_of_LCD_INITIALIZE_4BIT-_LCD_INITIALIZE_4BIT
	
_LCD_INITIALIZE_4BIT:	
	opt	stack 6
; Regs used in _LCD_INITIALIZE_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l3975:	
;LCD_SCREEN.h: 166: LCD_INSTRUCTION_4BIT(0x02);
	movlw	(02h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	167
;LCD_SCREEN.h: 167: LCD_INSTRUCTION_4BIT(0x28);
	movlw	(028h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	168
;LCD_SCREEN.h: 168: LCD_INSTRUCTION_4BIT(0x0c);
	movlw	(0Ch)
	fcall	_LCD_INSTRUCTION_4BIT
	line	169
;LCD_SCREEN.h: 169: LCD_INSTRUCTION_4BIT(0x06);
	movlw	(06h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	170
;LCD_SCREEN.h: 170: LCD_INSTRUCTION_4BIT(0x01);
	movlw	(01h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	172
	
l760:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INITIALIZE_4BIT
	__end_of_LCD_INITIALIZE_4BIT:
;; =============== function _LCD_INITIALIZE_4BIT ends ============

	signat	_LCD_INITIALIZE_4BIT,88
	global	_PWM2_DUTY
psect	text630,local,class=CODE,delta=2
global __ptext630
__ptext630:

;; *************** function _PWM2_DUTY *****************
;; Defined at:
;;		line 34 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  duty            2   51[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwtoft
;;		___ftdiv
;;		_PWM_MAX_DUTY
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text630
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	34
	global	__size_of_PWM2_DUTY
	__size_of_PWM2_DUTY	equ	__end_of_PWM2_DUTY-_PWM2_DUTY
	
_PWM2_DUTY:	
	opt	stack 4
; Regs used in _PWM2_DUTY: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l3955:	
;PWM_lib.h: 35: if(duty<1024)
	movlw	high(0400h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(PWM2_DUTY@duty+1),w
	movlw	low(0400h)
	skipnz
	subwf	(PWM2_DUTY@duty),w
	skipnc
	goto	u5211
	goto	u5210
u5211:
	goto	l713
u5210:
	line	37
	
l3957:	
;PWM_lib.h: 36: {
;PWM_lib.h: 37: duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
	movf	(PWM2_DUTY@duty+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(PWM2_DUTY@duty),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	_PWM_MAX_DUTY
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(PWM2_DUTY@duty+1)
	addwf	(PWM2_DUTY@duty+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(PWM2_DUTY@duty)
	addwf	(PWM2_DUTY@duty)

	line	38
	
l3959:	
;PWM_lib.h: 38: CCP2X = duty && 2;
	clrf	(_PWM2_DUTY$1248)
	
l3961:	
	movf	(PWM2_DUTY@duty+1),w
	iorwf	(PWM2_DUTY@duty),w
	skipnz
	goto	u5221
	goto	u5220
u5221:
	goto	l3965
u5220:
	
l3963:	
	clrf	(_PWM2_DUTY$1248)
	bsf	status,0
	rlf	(_PWM2_DUTY$1248),f
	goto	l3965
	
l710:	
	
l3965:	
	movf	(_PWM2_DUTY$1248),w
	skipz
	bsf	(237/8),(237)&7
	skipnz
	bcf	(237/8),(237)&7
	line	39
	
l3967:	
;PWM_lib.h: 39: CCP2Y = duty && 1;
	clrf	(_PWM2_DUTY$1249)
	
l3969:	
	movf	(PWM2_DUTY@duty+1),w
	iorwf	(PWM2_DUTY@duty),w
	skipnz
	goto	u5231
	goto	u5230
u5231:
	goto	l3973
u5230:
	
l3971:	
	clrf	(_PWM2_DUTY$1249)
	bsf	status,0
	rlf	(_PWM2_DUTY$1249),f
	goto	l3973
	
l712:	
	
l3973:	
	movf	(_PWM2_DUTY$1249),w
	skipz
	bsf	(236/8),(236)&7
	skipnz
	bcf	(236/8),(236)&7
	line	40
;PWM_lib.h: 40: CCPR2L = duty>>2;
	movf	(PWM2_DUTY@duty+1),w
	movwf	(??_PWM2_DUTY+0)+0+1
	movf	(PWM2_DUTY@duty),w
	movwf	(??_PWM2_DUTY+0)+0
	movlw	02h
u5245:
	clrc
	rrf	(??_PWM2_DUTY+0)+1,f
	rrf	(??_PWM2_DUTY+0)+0,f
	addlw	-1
	skipz
	goto	u5245
	movf	0+(??_PWM2_DUTY+0)+0,w
	movwf	(27)	;volatile
	goto	l713
	line	41
	
l708:	
	line	42
	
l713:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_DUTY
	__end_of_PWM2_DUTY:
;; =============== function _PWM2_DUTY ends ============

	signat	_PWM2_DUTY,4216
	global	_PWM1_DUTY
psect	text631,local,class=CODE,delta=2
global __ptext631
__ptext631:

;; *************** function _PWM1_DUTY *****************
;; Defined at:
;;		line 23 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  duty            2   51[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwtoft
;;		___ftdiv
;;		_PWM_MAX_DUTY
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_PWM_SETUP
;;		_main
;; This function uses a non-reentrant model
;;
psect	text631
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	23
	global	__size_of_PWM1_DUTY
	__size_of_PWM1_DUTY	equ	__end_of_PWM1_DUTY-_PWM1_DUTY
	
_PWM1_DUTY:	
	opt	stack 5
; Regs used in _PWM1_DUTY: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l3935:	
;PWM_lib.h: 24: if(duty<1024)
	movlw	high(0400h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(PWM1_DUTY@duty+1),w
	movlw	low(0400h)
	skipnz
	subwf	(PWM1_DUTY@duty),w
	skipnc
	goto	u5171
	goto	u5170
u5171:
	goto	l705
u5170:
	line	26
	
l3937:	
;PWM_lib.h: 25: {
;PWM_lib.h: 26: duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
	movf	(PWM1_DUTY@duty+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(PWM1_DUTY@duty),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	_PWM_MAX_DUTY
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(PWM1_DUTY@duty+1)
	addwf	(PWM1_DUTY@duty+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(PWM1_DUTY@duty)
	addwf	(PWM1_DUTY@duty)

	line	27
	
l3939:	
;PWM_lib.h: 27: CCP1X = duty && 2;
	clrf	(_PWM1_DUTY$1244)
	
l3941:	
	movf	(PWM1_DUTY@duty+1),w
	iorwf	(PWM1_DUTY@duty),w
	skipnz
	goto	u5181
	goto	u5180
u5181:
	goto	l3945
u5180:
	
l3943:	
	clrf	(_PWM1_DUTY$1244)
	bsf	status,0
	rlf	(_PWM1_DUTY$1244),f
	goto	l3945
	
l702:	
	
l3945:	
	movf	(_PWM1_DUTY$1244),w
	skipz
	bsf	(189/8),(189)&7
	skipnz
	bcf	(189/8),(189)&7
	line	28
	
l3947:	
;PWM_lib.h: 28: CCP1Y = duty && 1;
	clrf	(_PWM1_DUTY$1245)
	
l3949:	
	movf	(PWM1_DUTY@duty+1),w
	iorwf	(PWM1_DUTY@duty),w
	skipnz
	goto	u5191
	goto	u5190
u5191:
	goto	l3953
u5190:
	
l3951:	
	clrf	(_PWM1_DUTY$1245)
	bsf	status,0
	rlf	(_PWM1_DUTY$1245),f
	goto	l3953
	
l704:	
	
l3953:	
	movf	(_PWM1_DUTY$1245),w
	skipz
	bsf	(188/8),(188)&7
	skipnz
	bcf	(188/8),(188)&7
	line	29
;PWM_lib.h: 29: CCPR1L = duty>>2;
	movf	(PWM1_DUTY@duty+1),w
	movwf	(??_PWM1_DUTY+0)+0+1
	movf	(PWM1_DUTY@duty),w
	movwf	(??_PWM1_DUTY+0)+0
	movlw	02h
u5205:
	clrc
	rrf	(??_PWM1_DUTY+0)+1,f
	rrf	(??_PWM1_DUTY+0)+0,f
	addlw	-1
	skipz
	goto	u5205
	movf	0+(??_PWM1_DUTY+0)+0,w
	movwf	(21)	;volatile
	goto	l705
	line	30
	
l700:	
	line	31
	
l705:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_DUTY
	__end_of_PWM1_DUTY:
;; =============== function _PWM1_DUTY ends ============

	signat	_PWM1_DUTY,4216
	global	___lwtoft
psect	text632,local,class=CODE,delta=2
global __ptext632
__ptext632:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;;		_main
;; This function uses a non-reentrant model
;;
psect	text632
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l3931:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l1700
	
l3933:	
	line	31
	
l1700:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text633,local,class=CODE,delta=2
global __ptext633
__ptext633:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text633
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3923:	
	clrf	(___awtoft@sign)
	line	37
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awtoft@c+1),7
	goto	u5161
	goto	u5160
u5161:
	goto	l3927
u5160:
	line	38
	
l3925:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l3927
	line	40
	
l1613:	
	line	41
	
l3927:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1614
	
l3929:	
	line	42
	
l1614:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text634,local,class=CODE,delta=2
global __ptext634
__ptext634:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   35[BANK0 ] float 
;;  f2              3   38[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   46[BANK0 ] unsigned um
;;  sign            1   50[BANK0 ] unsigned char 
;;  cntr            1   49[BANK0 ] unsigned char 
;;  exp             1   45[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   35[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;;		_main
;; This function uses a non-reentrant model
;;
psect	text634
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3873:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u5021
	goto	u5020
u5021:
	goto	l3879
u5020:
	line	57
	
l3875:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1576
	
l3877:	
	goto	l1576
	
l1575:	
	line	58
	
l3879:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u5031
	goto	u5030
u5031:
	goto	l3885
u5030:
	line	59
	
l3881:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1576
	
l3883:	
	goto	l1576
	
l1577:	
	line	60
	
l3885:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u5045:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5040:
	addlw	-1
	skipz
	goto	u5045
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u5055:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u5050:
	addlw	-1
	skipz
	goto	u5055
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l3887:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3889:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3891:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3893:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l3895:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3897
	line	70
	
l1578:	
	line	71
	
l3897:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5061
	goto	u5060
u5061:
	goto	l3901
u5060:
	line	72
	
l3899:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5071
	addwf	(___ftmul@f3_as_product+1),f
u5071:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5072
	addwf	(___ftmul@f3_as_product+2),f
u5072:

	goto	l3901
	
l1579:	
	line	73
	
l3901:	
	movlw	01h
u5085:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5085

	line	74
	
l3903:	
	movlw	01h
u5095:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u5095
	line	75
	
l3905:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5101
	goto	u5100
u5101:
	goto	l3897
u5100:
	goto	l3907
	
l1580:	
	line	76
	
l3907:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3909
	line	77
	
l1581:	
	line	78
	
l3909:	
	btfss	(___ftmul@f1),(0)&7
	goto	u5111
	goto	u5110
u5111:
	goto	l3913
u5110:
	line	79
	
l3911:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u5121
	addwf	(___ftmul@f3_as_product+1),f
u5121:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u5122
	addwf	(___ftmul@f3_as_product+2),f
u5122:

	goto	l3913
	
l1582:	
	line	80
	
l3913:	
	movlw	01h
u5135:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u5135

	line	81
	
l3915:	
	movlw	01h
u5145:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u5145

	line	82
	
l3917:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u5151
	goto	u5150
u5151:
	goto	l3909
u5150:
	goto	l3919
	
l1583:	
	line	83
	
l3919:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1576
	
l3921:	
	line	84
	
l1576:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text635,local,class=CODE,delta=2
global __ptext635
__ptext635:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   19[BANK0 ] float 
;;  f1              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   30[BANK0 ] float 
;;  sign            1   34[BANK0 ] unsigned char 
;;  exp             1   33[BANK0 ] unsigned char 
;;  cntr            1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   19[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;;		_main
;; This function uses a non-reentrant model
;;
psect	text635
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3831:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u4941
	goto	u4940
u4941:
	goto	l3837
u4940:
	line	56
	
l3833:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1566
	
l3835:	
	goto	l1566
	
l1565:	
	line	57
	
l3837:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u4951
	goto	u4950
u4951:
	goto	l3843
u4950:
	line	58
	
l3839:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1566
	
l3841:	
	goto	l1566
	
l1567:	
	line	59
	
l3843:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l3845:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3847:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4965:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4960:
	addlw	-1
	skipz
	goto	u4965
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l3849:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4975:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4970:
	addlw	-1
	skipz
	goto	u4975
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3851:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l3853:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3855:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l3857
	line	69
	
l1568:	
	line	70
	
l3857:	
	movlw	01h
u4985:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4985
	line	71
	
l3859:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4995
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4995
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4995:
	skipc
	goto	u4991
	goto	u4990
u4991:
	goto	l3865
u4990:
	line	72
	
l3861:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l3863:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l3865
	line	74
	
l1569:	
	line	75
	
l3865:	
	movlw	01h
u5005:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u5005
	line	76
	
l3867:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u5011
	goto	u5010
u5011:
	goto	l3857
u5010:
	goto	l3869
	
l1570:	
	line	77
	
l3869:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1566
	
l3871:	
	line	78
	
l1566:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_ADC_READ
psect	text636,local,class=CODE,delta=2
global __ptext636
__ptext636:

;; *************** function _ADC_READ *****************
;; Defined at:
;;		line 6 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\ADC_lib.h"
;; Parameters:    Size  Location     Type
;;  channel         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  channel         1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text636
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\ADC_lib.h"
	line	6
	global	__size_of_ADC_READ
	__size_of_ADC_READ	equ	__end_of_ADC_READ-_ADC_READ
	
_ADC_READ:	
	opt	stack 7
; Regs used in _ADC_READ: [wreg+status,2+status,0+btemp+1]
;ADC_READ@channel stored from wreg
	movwf	(ADC_READ@channel)
	line	7
	
l3815:	
;ADC_lib.h: 7: if(channel > 7)
	movlw	(08h)
	subwf	(ADC_READ@channel),w
	skipc
	goto	u4911
	goto	u4910
u4911:
	goto	l3821
u4910:
	line	8
	
l3817:	
;ADC_lib.h: 8: return 0;
	clrf	(?_ADC_READ)
	clrf	(?_ADC_READ+1)
	goto	l779
	
l3819:	
	goto	l779
	
l778:	
	line	10
	
l3821:	
;ADC_lib.h: 10: ADCON0 &= 0xC5;
	movlw	(0C5h)
	movwf	(??_ADC_READ+0)+0
	movf	(??_ADC_READ+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	andwf	(31),f	;volatile
	line	11
;ADC_lib.h: 11: ADCON0 |= channel<<3;
	movf	(ADC_READ@channel),w
	movwf	(??_ADC_READ+0)+0
	movlw	(03h)-1
u4925:
	clrc
	rlf	(??_ADC_READ+0)+0,f
	addlw	-1
	skipz
	goto	u4925
	clrc
	rlf	(??_ADC_READ+0)+0,w
	movwf	(??_ADC_READ+1)+0
	movf	(??_ADC_READ+1)+0,w
	iorwf	(31),f	;volatile
	line	12
	
l3823:	
;ADC_lib.h: 12: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_ADC_READ+0)+0+1),f
	movlw	251
movwf	((??_ADC_READ+0)+0),f
u5277:
	decfsz	((??_ADC_READ+0)+0),f
	goto	u5277
	decfsz	((??_ADC_READ+0)+0+1),f
	goto	u5277
	nop2
opt asmopt_on

	line	13
	
l3825:	
;ADC_lib.h: 13: GO_nDONE = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(250/8),(250)&7
	line	14
;ADC_lib.h: 14: while(GO_nDONE);
	goto	l780
	
l781:	
	
l780:	
	btfsc	(250/8),(250)&7
	goto	u4931
	goto	u4930
u4931:
	goto	l780
u4930:
	goto	l3827
	
l782:	
	line	15
	
l3827:	
;ADC_lib.h: 15: return ((ADRESH<<8)+ADRESL);
	movf	(30),w	;volatile
	movwf	(??_ADC_READ+0)+0
	clrf	(??_ADC_READ+0)+0+1
	movf	(??_ADC_READ+0)+0,w
	movwf	(??_ADC_READ+0)+1
	clrf	(??_ADC_READ+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	addwf	0+(??_ADC_READ+0)+0,w
	movwf	(?_ADC_READ)
	movlw	0
	skipnc
	movlw	1
	addwf	1+(??_ADC_READ+0)+0,w
	movwf	1+(?_ADC_READ)
	goto	l779
	
l3829:	
	line	16
	
l779:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_READ
	__end_of_ADC_READ:
;; =============== function _ADC_READ ends ============

	signat	_ADC_READ,4218
	global	_LCD_INSTRUCTION_4BIT
psect	text637,local,class=CODE,delta=2
global __ptext637
__ptext637:

;; *************** function _LCD_INSTRUCTION_4BIT *****************
;; Defined at:
;;		line 110 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  instruction     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  instruction     1    0[BANK0 ] unsigned char 
;;  x               2   12[BANK0 ] int 
;;  x               2   10[BANK0 ] int 
;;  _4bit_          8    1[BANK0 ] int [4]
;;  data            1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      14       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5      14       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_INITIALIZE_4BIT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text637
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
	line	110
	global	__size_of_LCD_INSTRUCTION_4BIT
	__size_of_LCD_INSTRUCTION_4BIT	equ	__end_of_LCD_INSTRUCTION_4BIT-_LCD_INSTRUCTION_4BIT
	
_LCD_INSTRUCTION_4BIT:	
	opt	stack 7
; Regs used in _LCD_INSTRUCTION_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_INSTRUCTION_4BIT@instruction stored from wreg
	line	112
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_INSTRUCTION_4BIT@instruction)
	
l3779:	
;LCD_SCREEN.h: 111: int _4bit_[0x04];
;LCD_SCREEN.h: 112: unsigned char data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	113
	
l3781:	
;LCD_SCREEN.h: 113: data = data>>0x04;
	movf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movlw	04h
u4665:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
	addlw	-1
	skipz
	goto	u4665
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	movf	(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	114
	
l3783:	
;LCD_SCREEN.h: 114: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x)
	clrf	(LCD_INSTRUCTION_4BIT@x+1)
	
l3785:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4675
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u4675:

	skipc
	goto	u4671
	goto	u4670
u4671:
	goto	l3789
u4670:
	goto	l749
	
l3787:	
	goto	l749
	
l748:	
	line	115
	
l3789:	
;LCD_SCREEN.h: 115: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u4684
u4685:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u4684:
	addlw	-1
	skipz
	goto	u4685
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u4694
u4695:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u4694:
	addlw	-1
	skipz
	goto	u4695
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x),w
	movwf	(??_LCD_INSTRUCTION_4BIT+4)+0
	addwf	(??_LCD_INSTRUCTION_4BIT+4)+0,w
	addlw	LCD_INSTRUCTION_4BIT@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	movwf	indf
	line	114
	
l3791:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x+1),f
	
l3793:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4705
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u4705:

	skipc
	goto	u4701
	goto	u4700
u4701:
	goto	l3789
u4700:
	
l749:	
	line	117
;LCD_SCREEN.h: 116: }
;LCD_SCREEN.h: 117: RB5 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4711
	goto	u4710
	
u4711:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4724
u4710:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4724:
	line	118
;LCD_SCREEN.h: 118: RB6 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4731
	goto	u4730
	
u4731:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u4744
u4730:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u4744:
	line	119
;LCD_SCREEN.h: 119: RB7 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4751
	goto	u4750
	
u4751:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u4764
u4750:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u4764:
	line	120
;LCD_SCREEN.h: 120: RC0 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4771
	goto	u4770
	
u4771:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4784
u4770:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4784:
	line	121
;LCD_SCREEN.h: 121: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	122
;LCD_SCREEN.h: 122: RB3 = 0x00;
	bcf	(51/8),(51)&7
	line	123
;LCD_SCREEN.h: 123: RB4 = 0x01;
	bsf	(52/8),(52)&7
	line	124
	
l3795:	
;LCD_SCREEN.h: 124: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	251
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u5287:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u5287
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u5287
	nop2
opt asmopt_on

	line	125
	
l3797:	
;LCD_SCREEN.h: 125: RB4 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	127
;LCD_SCREEN.h: 127: data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	128
	
l3799:	
;LCD_SCREEN.h: 128: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x_1271)
	clrf	(LCD_INSTRUCTION_4BIT@x_1271+1)
	
l3801:	
	movf	(LCD_INSTRUCTION_4BIT@x_1271+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4795
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1271),w
u4795:

	skipc
	goto	u4791
	goto	u4790
u4791:
	goto	l3805
u4790:
	goto	l751
	
l3803:	
	goto	l751
	
l750:	
	line	129
	
l3805:	
;LCD_SCREEN.h: 129: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x_1271),w
	goto	u4804
u4805:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u4804:
	addlw	-1
	skipz
	goto	u4805
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x_1271),w
	goto	u4814
u4815:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u4814:
	addlw	-1
	skipz
	goto	u4815
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x_1271),w
	movwf	(??_LCD_INSTRUCTION_4BIT+4)+0
	addwf	(??_LCD_INSTRUCTION_4BIT+4)+0,w
	addlw	LCD_INSTRUCTION_4BIT@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_INSTRUCTION_4BIT+2)+0,w
	movwf	indf
	line	128
	
l3807:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1271),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x_1271+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1271+1),f
	
l3809:	
	movf	(LCD_INSTRUCTION_4BIT@x_1271+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4825
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1271),w
u4825:

	skipc
	goto	u4821
	goto	u4820
u4821:
	goto	l3805
u4820:
	
l751:	
	line	131
;LCD_SCREEN.h: 130: }
;LCD_SCREEN.h: 131: RB5 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4831
	goto	u4830
	
u4831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4844
u4830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4844:
	line	132
;LCD_SCREEN.h: 132: RB6 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4851
	goto	u4850
	
u4851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u4864
u4850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u4864:
	line	133
;LCD_SCREEN.h: 133: RB7 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4871
	goto	u4870
	
u4871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u4884
u4870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u4884:
	line	134
;LCD_SCREEN.h: 134: RC0 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4891
	goto	u4890
	
u4891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4904
u4890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4904:
	line	135
;LCD_SCREEN.h: 135: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	136
;LCD_SCREEN.h: 136: RB3 = 0x00;
	bcf	(51/8),(51)&7
	line	137
;LCD_SCREEN.h: 137: RB4 = 0x01;
	bsf	(52/8),(52)&7
	line	138
	
l3811:	
;LCD_SCREEN.h: 138: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	251
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u5297:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u5297
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u5297
	nop2
opt asmopt_on

	line	139
	
l3813:	
;LCD_SCREEN.h: 139: RB4 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	141
	
l752:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INSTRUCTION_4BIT
	__end_of_LCD_INSTRUCTION_4BIT:
;; =============== function _LCD_INSTRUCTION_4BIT ends ============

	signat	_LCD_INSTRUCTION_4BIT,4216
	global	_LCD_DATA
psect	text638,local,class=CODE,delta=2
global __ptext638
__ptext638:

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 55 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;;  mode            2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  data            1   24[BANK0 ] unsigned char 
;;  v               2   30[BANK0 ] int 
;;  x               2   28[BANK0 ] int 
;;  x               2   26[BANK0 ] int 
;;  _8bit_         16    0[BANK0 ] int [8]
;;  _4bit_          8   16[BANK0 ] int [4]
;;  _data           1   25[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      32       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         7      32       0       0       0
;;Total ram usage:       39 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_DISPLAY
;;		_main
;;		_LCD_DISPLAY_DIGIT
;; This function uses a non-reentrant model
;;
psect	text638
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
	line	55
	global	__size_of_LCD_DATA
	__size_of_LCD_DATA	equ	__end_of_LCD_DATA-_LCD_DATA
	
_LCD_DATA:	
	opt	stack 7
; Regs used in _LCD_DATA: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_DATA@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DATA@data)
	line	56
	
l3725:	
;LCD_SCREEN.h: 56: unsigned char _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	59
;LCD_SCREEN.h: 57: int _4bit_[0x04];
;LCD_SCREEN.h: 58: int _8bit_[0x08];
;LCD_SCREEN.h: 59: if(mode == 0x04){
	movlw	04h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u4191
	goto	u4190
u4191:
	goto	l737
u4190:
	line	60
	
l3727:	
;LCD_SCREEN.h: 60: _data = _data>>0x04;
	movf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+0)+0
	movlw	04h
u4205:
	clrc
	rrf	(??_LCD_DATA+0)+0,f
	addlw	-1
	skipz
	goto	u4205
	movf	0+(??_LCD_DATA+0)+0,w
	movwf	(??_LCD_DATA+1)+0
	movf	(??_LCD_DATA+1)+0,w
	movwf	(LCD_DATA@_data)
	line	61
	
l3729:	
;LCD_SCREEN.h: 61: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_DATA@x)
	clrf	(LCD_DATA@x+1)
	
l3731:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4215
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u4215:

	skipc
	goto	u4211
	goto	u4210
u4211:
	goto	l3735
u4210:
	goto	l739
	
l3733:	
	goto	l739
	
l738:	
	line	62
	
l3735:	
;LCD_SCREEN.h: 62: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x),w
	goto	u4224
u4225:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u4224:
	addlw	-1
	skipz
	goto	u4225
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x),w
	goto	u4234
u4235:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u4234:
	addlw	-1
	skipz
	goto	u4235
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x),w
	movwf	(??_LCD_DATA+4)+0
	addwf	(??_LCD_DATA+4)+0,w
	addlw	LCD_DATA@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_DATA+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_DATA+2)+0,w
	movwf	indf
	line	61
	
l3737:	
	movlw	low(01h)
	addwf	(LCD_DATA@x),f
	skipnc
	incf	(LCD_DATA@x+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x+1),f
	
l3739:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4245
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u4245:

	skipc
	goto	u4241
	goto	u4240
u4241:
	goto	l3735
u4240:
	
l739:	
	line	64
;LCD_SCREEN.h: 63: }
;LCD_SCREEN.h: 64: RB5 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u4251
	goto	u4250
	
u4251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4264
u4250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4264:
	line	65
;LCD_SCREEN.h: 65: RB6 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u4271
	goto	u4270
	
u4271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u4284
u4270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u4284:
	line	66
;LCD_SCREEN.h: 66: RB7 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u4291
	goto	u4290
	
u4291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u4304
u4290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u4304:
	line	67
;LCD_SCREEN.h: 67: RC0 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u4311
	goto	u4310
	
u4311:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4324
u4310:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4324:
	line	68
;LCD_SCREEN.h: 68: RB2 = 0x01;
	bsf	(50/8),(50)&7
	line	69
;LCD_SCREEN.h: 69: RB3 = 0x00;
	bcf	(51/8),(51)&7
	line	70
;LCD_SCREEN.h: 70: RB4 = 0x01;
	bsf	(52/8),(52)&7
	line	71
	
l3741:	
;LCD_SCREEN.h: 71: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u5307:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u5307
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u5307
	nop2
opt asmopt_on

	line	72
	
l3743:	
;LCD_SCREEN.h: 72: RB4 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	74
;LCD_SCREEN.h: 74: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	75
	
l3745:	
;LCD_SCREEN.h: 75: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_DATA@x_1264)
	clrf	(LCD_DATA@x_1264+1)
	
l3747:	
	movf	(LCD_DATA@x_1264+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4335
	movlw	low(04h)
	subwf	(LCD_DATA@x_1264),w
u4335:

	skipc
	goto	u4331
	goto	u4330
u4331:
	goto	l3751
u4330:
	goto	l741
	
l3749:	
	goto	l741
	
l740:	
	line	76
	
l3751:	
;LCD_SCREEN.h: 76: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x_1264),w
	goto	u4344
u4345:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u4344:
	addlw	-1
	skipz
	goto	u4345
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x_1264),w
	goto	u4354
u4355:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u4354:
	addlw	-1
	skipz
	goto	u4355
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x_1264),w
	movwf	(??_LCD_DATA+4)+0
	addwf	(??_LCD_DATA+4)+0,w
	addlw	LCD_DATA@_4bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_DATA+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_DATA+2)+0,w
	movwf	indf
	line	75
	
l3753:	
	movlw	low(01h)
	addwf	(LCD_DATA@x_1264),f
	skipnc
	incf	(LCD_DATA@x_1264+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x_1264+1),f
	
l3755:	
	movf	(LCD_DATA@x_1264+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4365
	movlw	low(04h)
	subwf	(LCD_DATA@x_1264),w
u4365:

	skipc
	goto	u4361
	goto	u4360
u4361:
	goto	l3751
u4360:
	
l741:	
	line	78
;LCD_SCREEN.h: 77: }
;LCD_SCREEN.h: 78: RB5 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u4371
	goto	u4370
	
u4371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4384
u4370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4384:
	line	79
;LCD_SCREEN.h: 79: RB6 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u4391
	goto	u4390
	
u4391:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u4404
u4390:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u4404:
	line	80
;LCD_SCREEN.h: 80: RB7 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u4411
	goto	u4410
	
u4411:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u4424
u4410:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u4424:
	line	81
;LCD_SCREEN.h: 81: RC0 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u4431
	goto	u4430
	
u4431:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4444
u4430:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4444:
	line	82
;LCD_SCREEN.h: 82: RB2 = 0x01;
	bsf	(50/8),(50)&7
	line	83
;LCD_SCREEN.h: 83: RB3 = 0x00;
	bcf	(51/8),(51)&7
	line	84
;LCD_SCREEN.h: 84: RB4 = 0x01;
	bsf	(52/8),(52)&7
	line	85
	
l3757:	
;LCD_SCREEN.h: 85: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u5317:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u5317
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u5317
	nop2
opt asmopt_on

	line	86
	
l3759:	
;LCD_SCREEN.h: 86: RB4 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	line	88
	
l737:	
	line	89
;LCD_SCREEN.h: 88: }
;LCD_SCREEN.h: 89: if(mode == 0x08){
	movlw	08h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u4451
	goto	u4450
u4451:
	goto	l745
u4450:
	line	90
	
l3761:	
;LCD_SCREEN.h: 90: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	91
	
l3763:	
;LCD_SCREEN.h: 91: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_DATA@v)
	clrf	(LCD_DATA@v+1)
	
l3765:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4465
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u4465:

	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l3769
u4460:
	goto	l744
	
l3767:	
	goto	l744
	
l743:	
	line	92
	
l3769:	
;LCD_SCREEN.h: 92: _8bit_[v] = (_data &(0x01 << v))>>v;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@v),w
	goto	u4474
u4475:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u4474:
	addlw	-1
	skipz
	goto	u4475
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@v),w
	goto	u4484
u4485:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u4484:
	addlw	-1
	skipz
	goto	u4485
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@v),w
	movwf	(??_LCD_DATA+4)+0
	addwf	(??_LCD_DATA+4)+0,w
	addlw	LCD_DATA@_8bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_DATA+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_DATA+2)+0,w
	movwf	indf
	line	91
	
l3771:	
	movlw	low(01h)
	addwf	(LCD_DATA@v),f
	skipnc
	incf	(LCD_DATA@v+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@v+1),f
	
l3773:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4495
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u4495:

	skipc
	goto	u4491
	goto	u4490
u4491:
	goto	l3769
u4490:
	
l744:	
	line	94
;LCD_SCREEN.h: 93: }
;LCD_SCREEN.h: 94: RD4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_8bit_),0
	goto	u4501
	goto	u4500
	
u4501:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	u4514
u4500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
u4514:
	line	95
;LCD_SCREEN.h: 95: RD5 = _8bit_[0x01];
	btfsc	0+(LCD_DATA@_8bit_)+02h,0
	goto	u4521
	goto	u4520
	
u4521:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(69/8),(69)&7
	goto	u4534
u4520:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(69/8),(69)&7
u4534:
	line	96
;LCD_SCREEN.h: 96: RD6 = _8bit_[0x02];
	btfsc	0+(LCD_DATA@_8bit_)+04h,0
	goto	u4541
	goto	u4540
	
u4541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(70/8),(70)&7
	goto	u4554
u4540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(70/8),(70)&7
u4554:
	line	97
;LCD_SCREEN.h: 97: RD7 = _8bit_[0x03];
	btfsc	0+(LCD_DATA@_8bit_)+06h,0
	goto	u4561
	goto	u4560
	
u4561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(71/8),(71)&7
	goto	u4574
u4560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(71/8),(71)&7
u4574:
	line	98
;LCD_SCREEN.h: 98: RB5 = _8bit_[0x04];
	btfsc	0+(LCD_DATA@_8bit_)+08h,0
	goto	u4581
	goto	u4580
	
u4581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u4594
u4580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u4594:
	line	99
;LCD_SCREEN.h: 99: RB6 = _8bit_[0x05];
	btfsc	0+(LCD_DATA@_8bit_)+0Ah,0
	goto	u4601
	goto	u4600
	
u4601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u4614
u4600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u4614:
	line	100
;LCD_SCREEN.h: 100: RB7 = _8bit_[0x06];
	btfsc	0+(LCD_DATA@_8bit_)+0Ch,0
	goto	u4621
	goto	u4620
	
u4621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u4634
u4620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u4634:
	line	101
;LCD_SCREEN.h: 101: RC0 = _8bit_[0x07];
	btfsc	0+(LCD_DATA@_8bit_)+0Eh,0
	goto	u4641
	goto	u4640
	
u4641:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4654
u4640:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4654:
	line	102
;LCD_SCREEN.h: 102: RB2 = 0x01;
	bsf	(50/8),(50)&7
	line	103
;LCD_SCREEN.h: 103: RB3 = 0x00;
	bcf	(51/8),(51)&7
	line	104
;LCD_SCREEN.h: 104: RB4 = 0x01;
	bsf	(52/8),(52)&7
	line	105
	
l3775:	
;LCD_SCREEN.h: 105: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	118
movwf	((??_LCD_DATA+0)+0),f
u5327:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u5327
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u5327
	clrwdt
opt asmopt_on

	line	106
	
l3777:	
;LCD_SCREEN.h: 106: RB4 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
	goto	l745
	line	107
	
l742:	
	line	108
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
;; =============== function _LCD_DATA ends ============

	signat	_LCD_DATA,8312
	global	_PWM2_INITIALIZE
psect	text639,local,class=CODE,delta=2
global __ptext639
__ptext639:

;; *************** function _PWM2_INITIALIZE *****************
;; Defined at:
;;		line 17 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  frequency       4    6[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text639
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	17
	global	__size_of_PWM2_INITIALIZE
	__size_of_PWM2_INITIALIZE	equ	__end_of_PWM2_INITIALIZE-_PWM2_INITIALIZE
	
_PWM2_INITIALIZE:	
	opt	stack 5
; Regs used in _PWM2_INITIALIZE: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l3721:	
;PWM_lib.h: 18: PR2 = (20000000/(Frequency*4*16)) - 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Frequency)^080h,w
	movwf	(??_PWM2_INITIALIZE+0)+0
	movf	(_Frequency+1)^080h,w
	movwf	((??_PWM2_INITIALIZE+0)+0+1)
	movf	(_Frequency+2)^080h,w
	movwf	((??_PWM2_INITIALIZE+0)+0+2)
	movf	(_Frequency+3)^080h,w
	movwf	((??_PWM2_INITIALIZE+0)+0+3)
	movlw	02h
u4175:
	clrc
	rlf	(??_PWM2_INITIALIZE+0)+0,f
	rlf	(??_PWM2_INITIALIZE+0)+1,f
	rlf	(??_PWM2_INITIALIZE+0)+2,f
	rlf	(??_PWM2_INITIALIZE+0)+3,f
u4170:
	addlw	-1
	skipz
	goto	u4175
	movlw	04h
u4185:
	clrc
	rlf	(??_PWM2_INITIALIZE+0)+0,f
	rlf	(??_PWM2_INITIALIZE+0)+1,f
	rlf	(??_PWM2_INITIALIZE+0)+2,f
	rlf	(??_PWM2_INITIALIZE+0)+3,f
u4180:
	addlw	-1
	skipz
	goto	u4185
	movf	3+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	19
	
l3723:	
;PWM_lib.h: 19: Frequency = frequency;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM2_INITIALIZE@frequency+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM2_INITIALIZE@frequency+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM2_INITIALIZE@frequency+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM2_INITIALIZE@frequency),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency)^080h

	line	20
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_INITIALIZE
	__end_of_PWM2_INITIALIZE:
;; =============== function _PWM2_INITIALIZE ends ============

	signat	_PWM2_INITIALIZE,4216
	global	_PWM1_INITIALIZE
psect	text640,local,class=CODE,delta=2
global __ptext640
__ptext640:

;; *************** function _PWM1_INITIALIZE *****************
;; Defined at:
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  frequency       4    6[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text640
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	11
	global	__size_of_PWM1_INITIALIZE
	__size_of_PWM1_INITIALIZE	equ	__end_of_PWM1_INITIALIZE-_PWM1_INITIALIZE
	
_PWM1_INITIALIZE:	
	opt	stack 5
; Regs used in _PWM1_INITIALIZE: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l3717:	
;PWM_lib.h: 12: PR2 = (20000000/(Frequency*4*16)) - 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Frequency)^080h,w
	movwf	(??_PWM1_INITIALIZE+0)+0
	movf	(_Frequency+1)^080h,w
	movwf	((??_PWM1_INITIALIZE+0)+0+1)
	movf	(_Frequency+2)^080h,w
	movwf	((??_PWM1_INITIALIZE+0)+0+2)
	movf	(_Frequency+3)^080h,w
	movwf	((??_PWM1_INITIALIZE+0)+0+3)
	movlw	02h
u4155:
	clrc
	rlf	(??_PWM1_INITIALIZE+0)+0,f
	rlf	(??_PWM1_INITIALIZE+0)+1,f
	rlf	(??_PWM1_INITIALIZE+0)+2,f
	rlf	(??_PWM1_INITIALIZE+0)+3,f
u4150:
	addlw	-1
	skipz
	goto	u4155
	movlw	04h
u4165:
	clrc
	rlf	(??_PWM1_INITIALIZE+0)+0,f
	rlf	(??_PWM1_INITIALIZE+0)+1,f
	rlf	(??_PWM1_INITIALIZE+0)+2,f
	rlf	(??_PWM1_INITIALIZE+0)+3,f
u4160:
	addlw	-1
	skipz
	goto	u4165
	movf	3+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	13
	
l3719:	
;PWM_lib.h: 13: Frequency = frequency;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM1_INITIALIZE@frequency+3),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency+3)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM1_INITIALIZE@frequency+2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency+2)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM1_INITIALIZE@frequency+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM1_INITIALIZE@frequency),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Frequency)^080h

	line	14
	
l694:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_INITIALIZE
	__end_of_PWM1_INITIALIZE:
;; =============== function _PWM1_INITIALIZE ends ============

	signat	_PWM1_INITIALIZE,4216
	global	_PWM_MAX_DUTY
psect	text641,local,class=CODE,delta=2
global __ptext641
__ptext641:

;; *************** function _PWM_MAX_DUTY *****************
;; Defined at:
;;		line 6 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text641
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	6
	global	__size_of_PWM_MAX_DUTY
	__size_of_PWM_MAX_DUTY	equ	__end_of_PWM_MAX_DUTY-_PWM_MAX_DUTY
	
_PWM_MAX_DUTY:	
	opt	stack 5
; Regs used in _PWM_MAX_DUTY: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l3713:	
;PWM_lib.h: 7: return(20000000/(Frequency*16);
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Frequency)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_PWM_MAX_DUTY+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Frequency+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_PWM_MAX_DUTY+0)+0+1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Frequency+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_PWM_MAX_DUTY+0)+0+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Frequency+3)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_PWM_MAX_DUTY+0)+0+3)
	movlw	04h
u4145:
	clrc
	rlf	(??_PWM_MAX_DUTY+0)+0,f
	rlf	(??_PWM_MAX_DUTY+0)+1,f
	rlf	(??_PWM_MAX_DUTY+0)+2,f
	rlf	(??_PWM_MAX_DUTY+0)+3,f
u4140:
	addlw	-1
	skipz
	goto	u4145
	movf	3+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_PWM_MAX_DUTY+1)
	addwf	(?_PWM_MAX_DUTY+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(?_PWM_MAX_DUTY)
	addwf	(?_PWM_MAX_DUTY)

	goto	l691
	
l3715:	
	line	8
	
l691:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_MAX_DUTY
	__end_of_PWM_MAX_DUTY:
;; =============== function _PWM_MAX_DUTY ends ============

	signat	_PWM_MAX_DUTY,90
	global	___awmod
psect	text642,local,class=CODE,delta=2
global __ptext642
__ptext642:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   16[BANK0 ] int 
;;  dividend        2   18[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   21[BANK0 ] unsigned char 
;;  counter         1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       6       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text642
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3637:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3991
	goto	u3990
u3991:
	goto	l3641
u3990:
	line	10
	
l3639:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3641
	line	12
	
l1685:	
	line	13
	
l3641:	
	btfss	(___awmod@divisor+1),7
	goto	u4001
	goto	u4000
u4001:
	goto	l3645
u4000:
	line	14
	
l3643:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3645
	
l1686:	
	line	15
	
l3645:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u4011
	goto	u4010
u4011:
	goto	l3663
u4010:
	line	16
	
l3647:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3653
	
l1689:	
	line	18
	
l3649:	
	movlw	01h
	
u4025:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u4025
	line	19
	
l3651:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3653
	line	20
	
l1688:	
	line	17
	
l3653:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u4031
	goto	u4030
u4031:
	goto	l3649
u4030:
	goto	l3655
	
l1690:	
	goto	l3655
	line	21
	
l1691:	
	line	22
	
l3655:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u4045
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u4045:
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l3659
u4040:
	line	23
	
l3657:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3659
	
l1692:	
	line	24
	
l3659:	
	movlw	01h
	
u4055:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u4055
	line	25
	
l3661:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u4061
	goto	u4060
u4061:
	goto	l3655
u4060:
	goto	l3663
	
l1693:	
	goto	l3663
	line	26
	
l1687:	
	line	27
	
l3663:	
	movf	(___awmod@sign),w
	skipz
	goto	u4070
	goto	l3667
u4070:
	line	28
	
l3665:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3667
	
l1694:	
	line	29
	
l3667:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1695
	
l3669:	
	line	30
	
l1695:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___aldiv
psect	text643,local,class=CODE,delta=2
global __ptext643
__ptext643:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] long 
;;  dividend        4    4[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_MAX_DUTY
;;		_PWM1_INITIALIZE
;;		_PWM2_INITIALIZE
;; This function uses a non-reentrant model
;;
psect	text643
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3595:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u3891
	goto	u3890
u3891:
	goto	l3601
u3890:
	line	11
	
l3597:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	
l3599:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3601
	line	13
	
l1672:	
	line	14
	
l3601:	
	btfss	(___aldiv@dividend+3),7
	goto	u3901
	goto	u3900
u3901:
	goto	l3607
u3900:
	line	15
	
l3603:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l3605:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3607
	line	17
	
l1673:	
	line	18
	
l3607:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3609:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u3911
	goto	u3910
u3911:
	goto	l3629
u3910:
	line	20
	
l3611:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3615
	
l1676:	
	line	22
	
l3613:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3925:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3925
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3615
	line	24
	
l1675:	
	line	21
	
l3615:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l3613
u3930:
	goto	l3617
	
l1677:	
	goto	l3617
	line	25
	
l1678:	
	line	26
	
l3617:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u3945:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u3945
	line	27
	
l3619:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u3955
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u3955
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u3955
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u3955:
	skipc
	goto	u3951
	goto	u3950
u3951:
	goto	l3625
u3950:
	line	28
	
l3621:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
l3623:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3625
	line	30
	
l1679:	
	line	31
	
l3625:	
	movlw	01h
u3965:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u3965

	line	32
	
l3627:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u3971
	goto	u3970
u3971:
	goto	l3617
u3970:
	goto	l3629
	
l1680:	
	goto	l3629
	line	33
	
l1674:	
	line	34
	
l3629:	
	movf	(___aldiv@sign),w
	skipz
	goto	u3980
	goto	l3633
u3980:
	line	35
	
l3631:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	l3633
	
l1681:	
	line	36
	
l3633:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l1682
	
l3635:	
	line	37
	
l1682:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___awdiv
psect	text644,local,class=CODE,delta=2
global __ptext644
__ptext644:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2   16[BANK0 ] int 
;;  dividend        2   18[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   22[BANK0 ] int 
;;  sign            1   21[BANK0 ] unsigned char 
;;  counter         1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       8       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text644
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3555:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3791
	goto	u3790
u3791:
	goto	l3559
u3790:
	line	11
	
l3557:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3559
	line	13
	
l1617:	
	line	14
	
l3559:	
	btfss	(___awdiv@dividend+1),7
	goto	u3801
	goto	u3800
u3801:
	goto	l3565
u3800:
	line	15
	
l3561:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3563:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3565
	line	17
	
l1618:	
	line	18
	
l3565:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3567:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3811
	goto	u3810
u3811:
	goto	l3587
u3810:
	line	20
	
l3569:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3575
	
l1621:	
	line	22
	
l3571:	
	movlw	01h
	
u3825:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3825
	line	23
	
l3573:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3575
	line	24
	
l1620:	
	line	21
	
l3575:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3831
	goto	u3830
u3831:
	goto	l3571
u3830:
	goto	l3577
	
l1622:	
	goto	l3577
	line	25
	
l1623:	
	line	26
	
l3577:	
	movlw	01h
	
u3845:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3845
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3855
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3855:
	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l3583
u3850:
	line	28
	
l3579:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3581:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3583
	line	30
	
l1624:	
	line	31
	
l3583:	
	movlw	01h
	
u3865:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3865
	line	32
	
l3585:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3871
	goto	u3870
u3871:
	goto	l3577
u3870:
	goto	l3587
	
l1625:	
	goto	l3587
	line	33
	
l1619:	
	line	34
	
l3587:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3880
	goto	l3591
u3880:
	line	35
	
l3589:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3591
	
l1626:	
	line	36
	
l3591:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1627
	
l3593:	
	line	37
	
l1627:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text645,local,class=CODE,delta=2
global __ptext645
__ptext645:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   11[BANK0 ] unsigned long 
;;  exp1            1   15[BANK0 ] unsigned char 
;;  sign1           1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;;		_main
;; This function uses a non-reentrant model
;;
psect	text645
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3499:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3681
	goto	u3680
u3681:
	goto	l3505
u3680:
	line	50
	
l3501:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1587
	
l3503:	
	goto	l1587
	
l1586:	
	line	51
	
l3505:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3695:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3690:
	addlw	-1
	skipz
	goto	u3695
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3507:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3509:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3511:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3513:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3515:	
	btfss	(___fttol@exp1),7
	goto	u3701
	goto	u3700
u3701:
	goto	l3525
u3700:
	line	57
	
l3517:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3711
	goto	u3710
u3711:
	goto	l3523
u3710:
	line	58
	
l3519:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1587
	
l3521:	
	goto	l1587
	
l1589:	
	goto	l3523
	line	59
	
l1590:	
	line	60
	
l3523:	
	movlw	01h
u3725:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3725

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3523
u3730:
	goto	l3535
	
l1591:	
	line	62
	goto	l3535
	
l1588:	
	line	63
	
l3525:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3741
	goto	u3740
u3741:
	goto	l3533
u3740:
	line	64
	
l3527:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1587
	
l3529:	
	goto	l1587
	
l1593:	
	line	65
	goto	l3533
	
l1595:	
	line	66
	
l3531:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3755:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3755
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3533
	line	68
	
l1594:	
	line	65
	
l3533:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3761
	goto	u3760
u3761:
	goto	l3531
u3760:
	goto	l3535
	
l1596:	
	goto	l3535
	line	69
	
l1592:	
	line	70
	
l3535:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3770
	goto	l3539
u3770:
	line	71
	
l3537:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l3539
	
l1597:	
	line	72
	
l3539:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1587
	
l3541:	
	line	73
	
l1587:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text646,local,class=CODE,delta=2
global __ptext646
__ptext646:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lwtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text646
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3463:	
	movf	(___ftpack@exp),w
	skipz
	goto	u3570
	goto	l3467
u3570:
	
l3465:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l3473
u3580:
	goto	l3467
	
l1811:	
	line	65
	
l3467:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1812
	
l3469:	
	goto	l1812
	
l1809:	
	line	66
	goto	l3473
	
l1814:	
	line	67
	
l3471:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3595:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3595

	goto	l3473
	line	69
	
l1813:	
	line	66
	
l3473:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3601
	goto	u3600
u3601:
	goto	l3471
u3600:
	goto	l1816
	
l1815:	
	line	70
	goto	l1816
	
l1817:	
	line	71
	
l3475:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3477:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l3479:	
	movlw	01h
u3615:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3615

	line	74
	
l1816:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3621
	goto	u3620
u3621:
	goto	l3475
u3620:
	goto	l3483
	
l1818:	
	line	75
	goto	l3483
	
l1820:	
	line	76
	
l3481:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3635:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3635
	goto	l3483
	line	78
	
l1819:	
	line	75
	
l3483:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l3481
u3640:
	
l1821:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l1822
u3650:
	line	80
	
l3485:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1822:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3487:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3665:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3660:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3489:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3670
	goto	l1823
u3670:
	line	84
	
l3491:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1823:	
	line	85
	line	86
	
l1812:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_ADC_INIT
psect	text647,local,class=CODE,delta=2
global __ptext647
__ptext647:

;; *************** function _ADC_INIT *****************
;; Defined at:
;;		line 1 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\ADC_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text647
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\ADC_lib.h"
	line	1
	global	__size_of_ADC_INIT
	__size_of_ADC_INIT	equ	__end_of_ADC_INIT-_ADC_INIT
	
_ADC_INIT:	
	opt	stack 7
; Regs used in _ADC_INIT: [wreg]
	line	2
	
l3391:	
;ADC_lib.h: 2: ADCON0 = 0x41;
	movlw	(041h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	3
;ADC_lib.h: 3: ADCON1 = 0xC0;
	movlw	(0C0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	4
	
l775:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_INIT
	__end_of_ADC_INIT:
;; =============== function _ADC_INIT ends ============

	signat	_ADC_INIT,88
	global	_strlen
psect	text648,local,class=CODE,delta=2
global __ptext648
__ptext648:

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[COMMON] PTR const unsigned char 
;;		 -> STR_1(9), 
;;  cp              1    9[COMMON] PTR const unsigned char 
;;		 -> STR_1(9), 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_DISPLAY
;; This function uses a non-reentrant model
;;
psect	text648
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
	line	5
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
	opt	stack 5
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+pclath]
;strlen@s stored from wreg
	line	8
	movwf	(strlen@s)
	
l3381:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l3383
	
l1466:	
	line	10
	goto	l3383
	
l1465:	
	line	9
	
l3383:	
	movlw	01h
	addwf	(strlen@cp),f
	movlw	-01h
	addwf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l3383
u3320:
	goto	l3385
	
l1467:	
	line	11
	
l3385:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movlw	80h
	movwf	(??_strlen+0)+0+1
	comf	(??_strlen+0)+0,f
	comf	(??_strlen+0)+1,f
	incf	(??_strlen+0)+0,f
	skipnz
	incf	(??_strlen+0)+1,f
	movf	(strlen@cp),w
	movwf	(??_strlen+2)+0
	movlw	80h
	movwf	(??_strlen+2)+0+1
	movf	0+(??_strlen+0)+0,w
	addwf	0+(??_strlen+2)+0,w
	movwf	(??_strlen+4)+0
	movf	1+(??_strlen+0)+0,w
	skipnc
	incf	1+(??_strlen+0)+0,w
	addwf	1+(??_strlen+2)+0,w
	movwf	1+(??_strlen+4)+0
	movf	0+(??_strlen+4)+0,w
	addlw	low(-1)
	movwf	(?_strlen)
	movf	1+(??_strlen+4)+0,w
	skipnc
	addlw	1
	addlw	high(-1)
	movwf	1+(?_strlen)
	goto	l1468
	
l3387:	
	line	12
	
l1468:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_LCD_SETUP_4BIT
psect	text649,local,class=CODE,delta=2
global __ptext649
__ptext649:

;; *************** function _LCD_SETUP_4BIT *****************
;; Defined at:
;;		line 25 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text649
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\LCD_SCREEN.h"
	line	25
	global	__size_of_LCD_SETUP_4BIT
	__size_of_LCD_SETUP_4BIT	equ	__end_of_LCD_SETUP_4BIT-_LCD_SETUP_4BIT
	
_LCD_SETUP_4BIT:	
	opt	stack 7
; Regs used in _LCD_SETUP_4BIT: []
	line	27
	
l3379:	
;LCD_SCREEN.h: 27: TRISB2 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1074/8)^080h,(1074)&7
	line	28
;LCD_SCREEN.h: 28: TRISB3 = 0x00;
	bcf	(1075/8)^080h,(1075)&7
	line	29
;LCD_SCREEN.h: 29: TRISB4 = 0x00;
	bcf	(1076/8)^080h,(1076)&7
	line	31
;LCD_SCREEN.h: 31: TRISB5 = 0x00;
	bcf	(1077/8)^080h,(1077)&7
	line	32
;LCD_SCREEN.h: 32: TRISB6 = 0x00;
	bcf	(1078/8)^080h,(1078)&7
	line	33
;LCD_SCREEN.h: 33: TRISB7 = 0x00;
	bcf	(1079/8)^080h,(1079)&7
	line	34
;LCD_SCREEN.h: 34: TRISC0 = 0x00;
	bcf	(1080/8)^080h,(1080)&7
	line	35
	
l731:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SETUP_4BIT
	__end_of_LCD_SETUP_4BIT:
;; =============== function _LCD_SETUP_4BIT ends ============

	signat	_LCD_SETUP_4BIT,88
	global	_PWM2_START
psect	text650,local,class=CODE,delta=2
global __ptext650
__ptext650:

;; *************** function _PWM2_START *****************
;; Defined at:
;;		line 69 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text650
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	69
	global	__size_of_PWM2_START
	__size_of_PWM2_START	equ	__end_of_PWM2_START-_PWM2_START
	
_PWM2_START:	
	opt	stack 6
; Regs used in _PWM2_START: []
	line	70
	
l3377:	
;PWM_lib.h: 70: CCP2M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(235/8),(235)&7
	line	71
;PWM_lib.h: 71: CCP2M2 = 1;
	bsf	(234/8),(234)&7
	line	79
;PWM_lib.h: 79: T2CKPS0 = 1;
	bsf	(144/8),(144)&7
	line	80
;PWM_lib.h: 80: T2CKPS1 = 1;
	bsf	(145/8),(145)&7
	line	82
;PWM_lib.h: 82: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	83
;PWM_lib.h: 83: TRISC1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	84
	
l722:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_START
	__end_of_PWM2_START:
;; =============== function _PWM2_START ends ============

	signat	_PWM2_START,88
	global	_PWM1_START
psect	text651,local,class=CODE,delta=2
global __ptext651
__ptext651:

;; *************** function _PWM1_START *****************
;; Defined at:
;;		line 45 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text651
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR2\PWM_lib.h"
	line	45
	global	__size_of_PWM1_START
	__size_of_PWM1_START	equ	__end_of_PWM1_START-_PWM1_START
	
_PWM1_START:	
	opt	stack 6
; Regs used in _PWM1_START: []
	line	46
	
l3375:	
;PWM_lib.h: 46: CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(187/8),(187)&7
	line	47
;PWM_lib.h: 47: CCP1M2 = 1;
	bsf	(186/8),(186)&7
	line	55
;PWM_lib.h: 55: T2CKPS0 = 1;
	bsf	(144/8),(144)&7
	line	56
;PWM_lib.h: 56: T2CKPS1 = 1;
	bsf	(145/8),(145)&7
	line	58
;PWM_lib.h: 58: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	59
;PWM_lib.h: 59: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	60
	
l716:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_START
	__end_of_PWM1_START:
;; =============== function _PWM1_START ends ============

	signat	_PWM1_START,88
psect	text652,local,class=CODE,delta=2
global __ptext652
__ptext652:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
