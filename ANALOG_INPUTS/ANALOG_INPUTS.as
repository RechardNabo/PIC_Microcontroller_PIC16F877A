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
	FNCALL	_main,_ADC_INIT
	FNCALL	_main,_LCD_SETUP_4BIT
	FNCALL	_main,_LCD_INITIALIZE_4BIT
	FNCALL	_main,_ADC_DISPLAY_ANALOG
	FNCALL	_main,___fttol
	FNCALL	_main,_LCD_INSTRUCTION_4BIT
	FNCALL	_main,_LCD_DISPLAY
	FNCALL	_ADC_DISPLAY_ANALOG,_ADC_INIT
	FNCALL	_ADC_DISPLAY_ANALOG,___lwtoft
	FNCALL	_ADC_DISPLAY_ANALOG,___ftdiv
	FNCALL	_ADC_DISPLAY_ANALOG,___ftmul
	FNCALL	_LCD_DISPLAY,_strlen
	FNCALL	_LCD_DISPLAY,_LCD_DATA
	FNCALL	_LCD_INITIALIZE_4BIT,_LCD_INSTRUCTION_4BIT
	FNCALL	___lwtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNROOT	_main
	FNCALL	intlevel1,_ADC_CONVERT
	global	intlevel1
	FNROOT	intlevel1
	global	_randx
	global	_analog
	global	_ADC
	global	_digital
	global	_randf
	global	_ADCON0
psect	text540,local,class=CODE,delta=2
global __ptext540
__ptext540:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_INTCONbits
_INTCONbits	set	11
	global	_ADIF
_ADIF	set	102
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB1
_RB1	set	49
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
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_ADIE
_ADIE	set	1126
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
	file	"ANALOG_INPUTS.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_digital:
       ds      2

_randf:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_randx:
       ds      4

_analog:
       ds      3

_ADC:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_LCD_SETUP_4BIT
?_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_INSTRUCTION_4BIT
?_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_INITIALIZE_4BIT
?_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DISPLAY
?_LCD_DISPLAY:	; 0 bytes @ 0x0
	global	?_ADC_INIT
?_ADC_INIT:	; 0 bytes @ 0x0
	global	?_ADC_CONVERT
?_ADC_CONVERT:	; 0 bytes @ 0x0
	global	??_ADC_CONVERT
??_ADC_CONVERT:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_LCD_SETUP_4BIT
??_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DATA
?_LCD_DATA:	; 0 bytes @ 0x0
	global	??_LCD_INSTRUCTION_4BIT
??_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	??_ADC_INIT
??_ADC_INIT:	; 0 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	LCD_DATA@mode
LCD_DATA@mode:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
	global	??_LCD_DATA
??_LCD_DATA:	; 0 bytes @ 0x2
	ds	1
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	LCD_INSTRUCTION_4BIT@instruction
LCD_INSTRUCTION_4BIT@instruction:	; 1 bytes @ 0x5
	ds	1
	global	LCD_INSTRUCTION_4BIT@_4bit_
LCD_INSTRUCTION_4BIT@_4bit_:	; 8 bytes @ 0x6
	ds	1
	global	LCD_DATA@_8bit_
LCD_DATA@_8bit_:	; 16 bytes @ 0x7
	ds	1
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	strlen@s
strlen@s:	; 1 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x9
	ds	3
	global	??___fttol
??___fttol:	; 0 bytes @ 0xC
	ds	2
	global	LCD_INSTRUCTION_4BIT@data
LCD_INSTRUCTION_4BIT@data:	; 1 bytes @ 0xE
	ds	1
	global	LCD_INSTRUCTION_4BIT@x
LCD_INSTRUCTION_4BIT@x:	; 2 bytes @ 0xF
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x10
	ds	1
	global	LCD_INSTRUCTION_4BIT@x_1259
LCD_INSTRUCTION_4BIT@x_1259:	; 2 bytes @ 0x11
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x11
	ds	2
	global	??_LCD_INITIALIZE_4BIT
??_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x13
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x15
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x16
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x16
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x16
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x16
	ds	1
	global	LCD_DATA@_4bit_
LCD_DATA@_4bit_:	; 8 bytes @ 0x17
	ds	2
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0x19
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x19
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x1A
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x1A
	ds	2
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x1C
	ds	1
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x1D
	ds	2
	global	LCD_DATA@data
LCD_DATA@data:	; 1 bytes @ 0x1F
	ds	1
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x20
	global	LCD_DATA@_data
LCD_DATA@_data:	; 1 bytes @ 0x20
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x20
	ds	1
	global	LCD_DATA@x
LCD_DATA@x:	; 2 bytes @ 0x21
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x21
	ds	2
	global	LCD_DATA@x_1252
LCD_DATA@x_1252:	; 2 bytes @ 0x23
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x24
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x24
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x25
	global	LCD_DATA@v
LCD_DATA@v:	; 2 bytes @ 0x25
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x25
	ds	2
	global	??_LCD_DISPLAY
??_LCD_DISPLAY:	; 0 bytes @ 0x27
	global	LCD_DISPLAY@length
LCD_DISPLAY@length:	; 2 bytes @ 0x27
	ds	1
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x28
	ds	1
	global	LCD_DISPLAY@string
LCD_DISPLAY@string:	; 1 bytes @ 0x29
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x29
	ds	1
	global	?_ADC_DISPLAY_ANALOG
?_ADC_DISPLAY_ANALOG:	; 3 bytes @ 0x2A
	global	LCD_DISPLAY@x
LCD_DISPLAY@x:	; 2 bytes @ 0x2A
	ds	3
	global	??_ADC_DISPLAY_ANALOG
??_ADC_DISPLAY_ANALOG:	; 0 bytes @ 0x2D
	global	??_main
??_main:	; 0 bytes @ 0x2D
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x2F
	ds	2
;;Data sizes: Strings 9, constant 0, data 0, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       9
;; BANK0           80     49      58
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?_ADC_DISPLAY_ANALOG	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?_strlen	unsigned int  size(1) Largest target is 8192
;;		 -> ROM(CODE[8192]), STR_1(CODE[9]), 
;;
;; strlen@s	PTR const unsigned char  size(1) Largest target is 8192
;;		 -> ROM(CODE[8192]), STR_1(CODE[9]), 
;;
;; strlen@cp	PTR const unsigned char  size(1) Largest target is 8192
;;		 -> ROM(CODE[8192]), STR_1(CODE[9]), 
;;
;; LCD_DISPLAY@string	PTR const unsigned char  size(1) Largest target is 8192
;;		 -> ROM(CODE[8192]), STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ADC_CONVERT in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADC_DISPLAY_ANALOG
;;   _ADC_DISPLAY_ANALOG->___ftdiv
;;   _LCD_DISPLAY->_LCD_DATA
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
;;   ___lwtoft->___fttol
;;   ___ftmul->___fttol
;;   ___ftdiv->___lwtoft
;;   ___fttol->___ftpack
;;
;; Critical Paths under _ADC_CONVERT in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ADC_CONVERT in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ADC_CONVERT in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ADC_CONVERT in BANK2
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
;; (0) _main                                                 4     4      0    4395
;;                                             45 BANK0      4     4      0
;;                           _ADC_INIT
;;                     _LCD_SETUP_4BIT
;;                _LCD_INITIALIZE_4BIT
;;                 _ADC_DISPLAY_ANALOG
;;                            ___fttol
;;               _LCD_INSTRUCTION_4BIT
;;                        _LCD_DISPLAY
;; ---------------------------------------------------------------------------------
;; (1) _ADC_DISPLAY_ANALOG                                   3     0      3    1264
;;                                             42 BANK0      3     0      3
;;                           _ADC_INIT
;;                           ___lwtoft
;;                            ___ftdiv
;;                            ___ftmul
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DISPLAY                                          5     5      0    1711
;;                                             39 BANK0      5     5      0
;;                             _strlen
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INITIALIZE_4BIT                                  0     0      0     567
;;               _LCD_INSTRUCTION_4BIT
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     240
;;                                             22 BANK0      4     1      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             22 BANK0     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                             26 BANK0     16    10      6
;;                           ___ftpack
;;                            ___fttol (ARG)
;;                           ___lwtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INSTRUCTION_4BIT                                19    19      0     567
;;                                              0 BANK0     19    19      0
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DATA                                            39    37      2    1420
;;                                              0 BANK0     39    37      2
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              8 BANK0     14    10      4
;;                           _ADC_INIT (ARG)
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (2) _ADC_INIT                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _strlen                                              10     8      2     127
;;                                              0 BANK0     10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SETUP_4BIT                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (4) _ADC_CONVERT                                          6     6      0       0
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ADC_INIT
;;   _LCD_SETUP_4BIT
;;   _LCD_INITIALIZE_4BIT
;;     _LCD_INSTRUCTION_4BIT
;;   _ADC_DISPLAY_ANALOG
;;     _ADC_INIT
;;     ___lwtoft
;;       ___ftpack
;;       ___fttol (ARG)
;;         _ADC_INIT (ARG)
;;         ___ftpack (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___fttol (ARG)
;;         _ADC_INIT (ARG)
;;         ___ftpack (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           _ADC_INIT (ARG)
;;           ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___fttol (ARG)
;;         _ADC_INIT (ARG)
;;         ___ftpack (ARG)
;;     ___fttol (ARG)
;;       _ADC_INIT (ARG)
;;       ___ftpack (ARG)
;;   ___fttol
;;     _ADC_INIT (ARG)
;;     ___ftpack (ARG)
;;   _LCD_INSTRUCTION_4BIT
;;   _LCD_DISPLAY
;;     _strlen
;;     _LCD_DATA
;;
;; _ADC_CONVERT (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      43       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     31      3A       5       72.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      46      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 12 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a               2   47[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2  753[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_ADC_INIT
;;		_LCD_SETUP_4BIT
;;		_LCD_INITIALIZE_4BIT
;;		_ADC_DISPLAY_ANALOG
;;		___fttol
;;		_LCD_INSTRUCTION_4BIT
;;		_LCD_DISPLAY
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\Main.c"
	line	12
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	13
	
l3607:	
;Main.c: 13: ADC_INIT();
	fcall	_ADC_INIT
	line	14
	
l3609:	
;Main.c: 14: LCD_SETUP_4BIT();
	fcall	_LCD_SETUP_4BIT
	line	15
	
l3611:	
;Main.c: 15: LCD_INITIALIZE_4BIT();
	fcall	_LCD_INITIALIZE_4BIT
	goto	l3613
	line	16
;Main.c: 16: while(0x01){
	
l754:	
	line	17
	
l3613:	
;Main.c: 17: unsigned int a = (int)ADC_DISPLAY_ANALOG();
	fcall	_ADC_DISPLAY_ANALOG
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADC_DISPLAY_ANALOG)),w
	movwf	(?___fttol)
	movf	(1+(?_ADC_DISPLAY_ANALOG)),w
	movwf	(?___fttol+1)
	movf	(2+(?_ADC_DISPLAY_ANALOG)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@a)
	addwf	(main@a)

	line	18
	
l3615:	
;Main.c: 18: LCD_INSTRUCTION_4BIT(0x80);
	movlw	(080h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	19
	
l3617:	
;Main.c: 19: LCD_DISPLAY("Value : ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DISPLAY
	line	20
	
l3619:	
;Main.c: 20: LCD_INSTRUCTION_4BIT(0x88);
	movlw	(088h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	21
	
l3621:	
;Main.c: 21: LCD_DISPLAY(a);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@a),w
	fcall	_LCD_DISPLAY
	line	22
	
l3623:	
;Main.c: 22: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u5277:
	decfsz	((??_main+0)+0),f
	goto	u5277
	decfsz	((??_main+0)+0+1),f
	goto	u5277
	clrwdt
opt asmopt_on

	goto	l3613
	line	23
	
l755:	
	line	16
	goto	l3613
	
l756:	
	line	25
;Main.c: 23: }
;Main.c: 24: return 0;
;	Return value of _main is never used
	
l757:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_ADC_DISPLAY_ANALOG
psect	text541,local,class=CODE,delta=2
global __ptext541
__ptext541:

;; *************** function _ADC_DISPLAY_ANALOG *****************
;; Defined at:
;;		line 33 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\ADC_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   42[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_ADC_INIT
;;		___lwtoft
;;		___ftdiv
;;		___ftmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text541
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\ADC_lib.h"
	line	33
	global	__size_of_ADC_DISPLAY_ANALOG
	__size_of_ADC_DISPLAY_ANALOG	equ	__end_of_ADC_DISPLAY_ANALOG-_ADC_DISPLAY_ANALOG
	
_ADC_DISPLAY_ANALOG:	
	opt	stack 4
; Regs used in _ADC_DISPLAY_ANALOG: [wreg+status,2+status,0+pclath+cstack]
	line	34
	
l3595:	
;ADC_lib.h: 34: ADC_INIT();
	fcall	_ADC_INIT
	line	35
	
l3597:	
;ADC_lib.h: 35: ADCON0 = ADCON0 |(0x04);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(31),w	;volatile
	iorlw	04h
	movwf	(31)	;volatile
	line	36
	
l3599:	
;ADC_lib.h: 36: analog = (float)(ADC)/(2.046);
	movlw	0xf2
	movwf	(?___ftdiv)
	movlw	0x2
	movwf	(?___ftdiv+1)
	movlw	0x40
	movwf	(?___ftdiv+2)
	movf	(_ADC+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(_ADC),w
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
	movwf	(_analog)
	movf	(1+(?___ftdiv)),w
	movwf	(_analog+1)
	movf	(2+(?___ftdiv)),w
	movwf	(_analog+2)
	line	37
	
l3601:	
;ADC_lib.h: 37: analog = (analog) * (100);
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	movf	(_analog),w
	movwf	0+(?___ftmul)+03h
	movf	(_analog+1),w
	movwf	1+(?___ftmul)+03h
	movf	(_analog+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(_analog)
	movf	(1+(?___ftmul)),w
	movwf	(_analog+1)
	movf	(2+(?___ftmul)),w
	movwf	(_analog+2)
	line	38
	
l3603:	
;ADC_lib.h: 38: return analog;
	movf	(_analog),w
	movwf	(?_ADC_DISPLAY_ANALOG)
	movf	(_analog+1),w
	movwf	(?_ADC_DISPLAY_ANALOG+1)
	movf	(_analog+2),w
	movwf	(?_ADC_DISPLAY_ANALOG+2)
	goto	l748
	
l3605:	
	line	39
	
l748:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_DISPLAY_ANALOG
	__end_of_ADC_DISPLAY_ANALOG:
;; =============== function _ADC_DISPLAY_ANALOG ends ============

	signat	_ADC_DISPLAY_ANALOG,91
	global	_LCD_DISPLAY
psect	text542,local,class=CODE,delta=2
global __ptext542
__ptext542:

;; *************** function _LCD_DISPLAY *****************
;; Defined at:
;;		line 181 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  string          1    wreg     PTR const unsigned char 
;;		 -> ROM(8192), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  string          1   41[BANK0 ] PTR const unsigned char 
;;		 -> ROM(8192), STR_1(9), 
;;  x               2   42[BANK0 ] unsigned int 
;;  length          2   39[BANK0 ] unsigned int 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_strlen
;;		_LCD_DATA
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text542
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
	line	181
	global	__size_of_LCD_DISPLAY
	__size_of_LCD_DISPLAY	equ	__end_of_LCD_DISPLAY-_LCD_DISPLAY
	
_LCD_DISPLAY:	
	opt	stack 4
; Regs used in _LCD_DISPLAY: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCD_DISPLAY@string stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DISPLAY@string)
	line	182
	
l3585:	
;LCD_SCREEN.h: 182: unsigned int length = strlen(string);
	movf	(LCD_DISPLAY@string),w
	fcall	_strlen
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_strlen)),w
	clrf	(LCD_DISPLAY@length+1)
	addwf	(LCD_DISPLAY@length+1)
	movf	(0+(?_strlen)),w
	clrf	(LCD_DISPLAY@length)
	addwf	(LCD_DISPLAY@length)

	line	184
	
l3587:	
;LCD_SCREEN.h: 183: unsigned int x;
;LCD_SCREEN.h: 184: for(x = 0x00 ; x < length ; x-=-0x01){
	clrf	(LCD_DISPLAY@x)
	clrf	(LCD_DISPLAY@x+1)
	goto	l3593
	
l733:	
	line	185
	
l3589:	
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
	
l3591:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_DISPLAY@x),f
	movlw	high(0FFFFh)
	skipc
	decf	(LCD_DISPLAY@x+1),f
	subwf	(LCD_DISPLAY@x+1),f
	goto	l3593
	
l732:	
	
l3593:	
	movf	(LCD_DISPLAY@length+1),w
	subwf	(LCD_DISPLAY@x+1),w
	skipz
	goto	u5265
	movf	(LCD_DISPLAY@length),w
	subwf	(LCD_DISPLAY@x),w
u5265:
	skipc
	goto	u5261
	goto	u5260
u5261:
	goto	l3589
u5260:
	goto	l735
	
l734:	
	line	187
	
l735:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DISPLAY
	__end_of_LCD_DISPLAY:
;; =============== function _LCD_DISPLAY ends ============

	signat	_LCD_DISPLAY,4216
	global	_LCD_INITIALIZE_4BIT
psect	text543,local,class=CODE,delta=2
global __ptext543
__ptext543:

;; *************** function _LCD_INITIALIZE_4BIT *****************
;; Defined at:
;;		line 165 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCD_INSTRUCTION_4BIT
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text543
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
	line	165
	global	__size_of_LCD_INITIALIZE_4BIT
	__size_of_LCD_INITIALIZE_4BIT	equ	__end_of_LCD_INITIALIZE_4BIT-_LCD_INITIALIZE_4BIT
	
_LCD_INITIALIZE_4BIT:	
	opt	stack 5
; Regs used in _LCD_INITIALIZE_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l3583:	
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
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INITIALIZE_4BIT
	__end_of_LCD_INITIALIZE_4BIT:
;; =============== function _LCD_INITIALIZE_4BIT ends ============

	signat	_LCD_INITIALIZE_4BIT,88
	global	___lwtoft
psect	text544,local,class=CODE,delta=2
global __ptext544
__ptext544:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC_DISPLAY_ANALOG
;; This function uses a non-reentrant model
;;
psect	text544
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l3579:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l1680
	
l3581:	
	line	31
	
l1680:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___ftmul
psect	text545,local,class=CODE,delta=2
global __ptext545
__ptext545:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   22[BANK0 ] float 
;;  f2              3   25[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   33[BANK0 ] unsigned um
;;  sign            1   37[BANK0 ] unsigned char 
;;  cntr            1   36[BANK0 ] unsigned char 
;;  exp             1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC_DISPLAY_ANALOG
;; This function uses a non-reentrant model
;;
psect	text545
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 4
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3399:	
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
	goto	u4631
	goto	u4630
u4631:
	goto	l3405
u4630:
	line	57
	
l3401:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1556
	
l3403:	
	goto	l1556
	
l1555:	
	line	58
	
l3405:	
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
	goto	u4641
	goto	u4640
u4641:
	goto	l3411
u4640:
	line	59
	
l3407:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1556
	
l3409:	
	goto	l1556
	
l1557:	
	line	60
	
l3411:	
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
u4655:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4650:
	addlw	-1
	skipz
	goto	u4655
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
u4665:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u4660:
	addlw	-1
	skipz
	goto	u4665
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
	
l3413:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3415:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3417:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3419:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l3421:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3423
	line	70
	
l1558:	
	line	71
	
l3423:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4671
	goto	u4670
u4671:
	goto	l3427
u4670:
	line	72
	
l3425:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4681
	addwf	(___ftmul@f3_as_product+1),f
u4681:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4682
	addwf	(___ftmul@f3_as_product+2),f
u4682:

	goto	l3427
	
l1559:	
	line	73
	
l3427:	
	movlw	01h
u4695:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4695

	line	74
	
l3429:	
	movlw	01h
u4705:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u4705
	line	75
	
l3431:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4711
	goto	u4710
u4711:
	goto	l3423
u4710:
	goto	l3433
	
l1560:	
	line	76
	
l3433:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3435
	line	77
	
l1561:	
	line	78
	
l3435:	
	btfss	(___ftmul@f1),(0)&7
	goto	u4721
	goto	u4720
u4721:
	goto	l3439
u4720:
	line	79
	
l3437:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u4731
	addwf	(___ftmul@f3_as_product+1),f
u4731:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u4732
	addwf	(___ftmul@f3_as_product+2),f
u4732:

	goto	l3439
	
l1562:	
	line	80
	
l3439:	
	movlw	01h
u4745:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u4745

	line	81
	
l3441:	
	movlw	01h
u4755:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u4755

	line	82
	
l3443:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u4761
	goto	u4760
u4761:
	goto	l3435
u4760:
	goto	l3445
	
l1563:	
	line	83
	
l3445:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1556
	
l3447:	
	line	84
	
l1556:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text546,local,class=CODE,delta=2
global __ptext546
__ptext546:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   26[BANK0 ] float 
;;  f1              3   29[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   37[BANK0 ] float 
;;  sign            1   41[BANK0 ] unsigned char 
;;  exp             1   40[BANK0 ] unsigned char 
;;  cntr            1   36[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   26[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADC_DISPLAY_ANALOG
;; This function uses a non-reentrant model
;;
psect	text546
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 4
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3357:	
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
	goto	u4551
	goto	u4550
u4551:
	goto	l3363
u4550:
	line	56
	
l3359:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1546
	
l3361:	
	goto	l1546
	
l1545:	
	line	57
	
l3363:	
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
	goto	u4561
	goto	u4560
u4561:
	goto	l3369
u4560:
	line	58
	
l3365:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1546
	
l3367:	
	goto	l1546
	
l1547:	
	line	59
	
l3369:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l3371:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3373:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4575:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4570:
	addlw	-1
	skipz
	goto	u4575
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l3375:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u4585:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u4580:
	addlw	-1
	skipz
	goto	u4585
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3377:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l3379:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3381:	
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
	goto	l3383
	line	69
	
l1548:	
	line	70
	
l3383:	
	movlw	01h
u4595:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u4595
	line	71
	
l3385:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u4605
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u4605
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u4605:
	skipc
	goto	u4601
	goto	u4600
u4601:
	goto	l3391
u4600:
	line	72
	
l3387:	
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
	
l3389:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l3391
	line	74
	
l1549:	
	line	75
	
l3391:	
	movlw	01h
u4615:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u4615
	line	76
	
l3393:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u4621
	goto	u4620
u4621:
	goto	l3383
u4620:
	goto	l3395
	
l1550:	
	line	77
	
l3395:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1546
	
l3397:	
	line	78
	
l1546:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_LCD_INSTRUCTION_4BIT
psect	text547,local,class=CODE,delta=2
global __ptext547
__ptext547:

;; *************** function _LCD_INSTRUCTION_4BIT *****************
;; Defined at:
;;		line 110 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  instruction     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  instruction     1    5[BANK0 ] unsigned char 
;;  x               2   17[BANK0 ] int 
;;  x               2   15[BANK0 ] int 
;;  _4bit_          8    6[BANK0 ] int [4]
;;  data            1   14[BANK0 ] unsigned char 
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
;;      Temps:          0       5       0       0       0
;;      Totals:         0      19       0       0       0
;;Total ram usage:       19 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_INITIALIZE_4BIT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text547
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
	line	110
	global	__size_of_LCD_INSTRUCTION_4BIT
	__size_of_LCD_INSTRUCTION_4BIT	equ	__end_of_LCD_INSTRUCTION_4BIT-_LCD_INSTRUCTION_4BIT
	
_LCD_INSTRUCTION_4BIT:	
	opt	stack 6
; Regs used in _LCD_INSTRUCTION_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_INSTRUCTION_4BIT@instruction stored from wreg
	line	112
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_INSTRUCTION_4BIT@instruction)
	
l3321:	
;LCD_SCREEN.h: 111: int _4bit_[0x04];
;LCD_SCREEN.h: 112: unsigned char data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	113
	
l3323:	
;LCD_SCREEN.h: 113: data = data>>0x04;
	movf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movlw	04h
u4305:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
	addlw	-1
	skipz
	goto	u4305
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	movf	(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	114
	
l3325:	
;LCD_SCREEN.h: 114: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x)
	clrf	(LCD_INSTRUCTION_4BIT@x+1)
	
l3327:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4315
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u4315:

	skipc
	goto	u4311
	goto	u4310
u4311:
	goto	l3331
u4310:
	goto	l715
	
l3329:	
	goto	l715
	
l714:	
	line	115
	
l3331:	
;LCD_SCREEN.h: 115: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u4324
u4325:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u4324:
	addlw	-1
	skipz
	goto	u4325
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u4334
u4335:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u4334:
	addlw	-1
	skipz
	goto	u4335
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
	
l3333:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x+1),f
	
l3335:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4345
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u4345:

	skipc
	goto	u4341
	goto	u4340
u4341:
	goto	l3331
u4340:
	
l715:	
	line	117
;LCD_SCREEN.h: 116: }
;LCD_SCREEN.h: 117: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4351
	goto	u4350
	
u4351:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4364
u4350:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4364:
	line	118
;LCD_SCREEN.h: 118: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4371
	goto	u4370
	
u4371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4384
u4370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4384:
	line	119
;LCD_SCREEN.h: 119: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4391
	goto	u4390
	
u4391:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4404
u4390:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4404:
	line	120
;LCD_SCREEN.h: 120: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4411
	goto	u4410
	
u4411:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4424
u4410:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4424:
	line	121
;LCD_SCREEN.h: 121: RB1 = 0x00;
	bcf	(49/8),(49)&7
	line	122
;LCD_SCREEN.h: 122: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	123
;LCD_SCREEN.h: 123: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	124
	
l3337:	
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
	
l3339:	
;LCD_SCREEN.h: 125: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	127
;LCD_SCREEN.h: 127: data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	128
	
l3341:	
;LCD_SCREEN.h: 128: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x_1259)
	clrf	(LCD_INSTRUCTION_4BIT@x_1259+1)
	
l3343:	
	movf	(LCD_INSTRUCTION_4BIT@x_1259+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4435
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1259),w
u4435:

	skipc
	goto	u4431
	goto	u4430
u4431:
	goto	l3347
u4430:
	goto	l717
	
l3345:	
	goto	l717
	
l716:	
	line	129
	
l3347:	
;LCD_SCREEN.h: 129: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	incf	(LCD_INSTRUCTION_4BIT@x_1259),w
	goto	u4444
u4445:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u4444:
	addlw	-1
	skipz
	goto	u4445
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x_1259),w
	goto	u4454
u4455:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u4454:
	addlw	-1
	skipz
	goto	u4455
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x_1259),w
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
	
l3349:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1259),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x_1259+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1259+1),f
	
l3351:	
	movf	(LCD_INSTRUCTION_4BIT@x_1259+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4465
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1259),w
u4465:

	skipc
	goto	u4461
	goto	u4460
u4461:
	goto	l3347
u4460:
	
l717:	
	line	131
;LCD_SCREEN.h: 130: }
;LCD_SCREEN.h: 131: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4471
	goto	u4470
	
u4471:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4484
u4470:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4484:
	line	132
;LCD_SCREEN.h: 132: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4491
	goto	u4490
	
u4491:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4504
u4490:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4504:
	line	133
;LCD_SCREEN.h: 133: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4511
	goto	u4510
	
u4511:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4524
u4510:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4524:
	line	134
;LCD_SCREEN.h: 134: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4531
	goto	u4530
	
u4531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4544
u4530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4544:
	line	135
;LCD_SCREEN.h: 135: RB1 = 0x00;
	bcf	(49/8),(49)&7
	line	136
;LCD_SCREEN.h: 136: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	137
;LCD_SCREEN.h: 137: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	138
	
l3353:	
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
	
l3355:	
;LCD_SCREEN.h: 139: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	141
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INSTRUCTION_4BIT
	__end_of_LCD_INSTRUCTION_4BIT:
;; =============== function _LCD_INSTRUCTION_4BIT ends ============

	signat	_LCD_INSTRUCTION_4BIT,4216
	global	_LCD_DATA
psect	text548,local,class=CODE,delta=2
global __ptext548
__ptext548:

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 55 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;;  mode            2    0[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  data            1   31[BANK0 ] unsigned char 
;;  v               2   37[BANK0 ] int 
;;  x               2   35[BANK0 ] int 
;;  x               2   33[BANK0 ] int 
;;  _8bit_         16    7[BANK0 ] int [8]
;;  _4bit_          8   23[BANK0 ] int [4]
;;  _data           1   32[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0      32       0       0       0
;;      Temps:          0       5       0       0       0
;;      Totals:         0      39       0       0       0
;;Total ram usage:       39 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_DISPLAY
;; This function uses a non-reentrant model
;;
psect	text548
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
	line	55
	global	__size_of_LCD_DATA
	__size_of_LCD_DATA	equ	__end_of_LCD_DATA-_LCD_DATA
	
_LCD_DATA:	
	opt	stack 5
; Regs used in _LCD_DATA: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_DATA@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DATA@data)
	line	56
	
l3525:	
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
	goto	u4791
	goto	u4790
u4791:
	goto	l703
u4790:
	line	60
	
l3527:	
;LCD_SCREEN.h: 60: _data = _data>>0x04;
	movf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+0)+0
	movlw	04h
u4805:
	clrc
	rrf	(??_LCD_DATA+0)+0,f
	addlw	-1
	skipz
	goto	u4805
	movf	0+(??_LCD_DATA+0)+0,w
	movwf	(??_LCD_DATA+1)+0
	movf	(??_LCD_DATA+1)+0,w
	movwf	(LCD_DATA@_data)
	line	61
	
l3529:	
;LCD_SCREEN.h: 61: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_DATA@x)
	clrf	(LCD_DATA@x+1)
	
l3531:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4815
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u4815:

	skipc
	goto	u4811
	goto	u4810
u4811:
	goto	l3535
u4810:
	goto	l705
	
l3533:	
	goto	l705
	
l704:	
	line	62
	
l3535:	
;LCD_SCREEN.h: 62: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_DATA+0)+0
	incf	(LCD_DATA@x),w
	goto	u4824
u4825:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u4824:
	addlw	-1
	skipz
	goto	u4825
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x),w
	goto	u4834
u4835:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u4834:
	addlw	-1
	skipz
	goto	u4835
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
	
l3537:	
	movlw	low(01h)
	addwf	(LCD_DATA@x),f
	skipnc
	incf	(LCD_DATA@x+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x+1),f
	
l3539:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4845
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u4845:

	skipc
	goto	u4841
	goto	u4840
u4841:
	goto	l3535
u4840:
	
l705:	
	line	64
;LCD_SCREEN.h: 63: }
;LCD_SCREEN.h: 64: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u4851
	goto	u4850
	
u4851:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4864
u4850:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4864:
	line	65
;LCD_SCREEN.h: 65: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u4871
	goto	u4870
	
u4871:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4884
u4870:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4884:
	line	66
;LCD_SCREEN.h: 66: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u4891
	goto	u4890
	
u4891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4904
u4890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4904:
	line	67
;LCD_SCREEN.h: 67: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u4911
	goto	u4910
	
u4911:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4924
u4910:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4924:
	line	68
;LCD_SCREEN.h: 68: RB1 = 0x01;
	bsf	(49/8),(49)&7
	line	69
;LCD_SCREEN.h: 69: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	70
;LCD_SCREEN.h: 70: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	71
	
l3541:	
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
	
l3543:	
;LCD_SCREEN.h: 72: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	74
;LCD_SCREEN.h: 74: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	75
	
l3545:	
;LCD_SCREEN.h: 75: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_DATA@x_1252)
	clrf	(LCD_DATA@x_1252+1)
	
l3547:	
	movf	(LCD_DATA@x_1252+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4935
	movlw	low(04h)
	subwf	(LCD_DATA@x_1252),w
u4935:

	skipc
	goto	u4931
	goto	u4930
u4931:
	goto	l3551
u4930:
	goto	l707
	
l3549:	
	goto	l707
	
l706:	
	line	76
	
l3551:	
;LCD_SCREEN.h: 76: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_DATA+0)+0
	incf	(LCD_DATA@x_1252),w
	goto	u4944
u4945:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u4944:
	addlw	-1
	skipz
	goto	u4945
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x_1252),w
	goto	u4954
u4955:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u4954:
	addlw	-1
	skipz
	goto	u4955
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x_1252),w
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
	
l3553:	
	movlw	low(01h)
	addwf	(LCD_DATA@x_1252),f
	skipnc
	incf	(LCD_DATA@x_1252+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x_1252+1),f
	
l3555:	
	movf	(LCD_DATA@x_1252+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4965
	movlw	low(04h)
	subwf	(LCD_DATA@x_1252),w
u4965:

	skipc
	goto	u4961
	goto	u4960
u4961:
	goto	l3551
u4960:
	
l707:	
	line	78
;LCD_SCREEN.h: 77: }
;LCD_SCREEN.h: 78: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u4971
	goto	u4970
	
u4971:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4984
u4970:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4984:
	line	79
;LCD_SCREEN.h: 79: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u4991
	goto	u4990
	
u4991:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u5004
u4990:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u5004:
	line	80
;LCD_SCREEN.h: 80: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u5011
	goto	u5010
	
u5011:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u5024
u5010:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u5024:
	line	81
;LCD_SCREEN.h: 81: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u5031
	goto	u5030
	
u5031:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u5044
u5030:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u5044:
	line	82
;LCD_SCREEN.h: 82: RB1 = 0x01;
	bsf	(49/8),(49)&7
	line	83
;LCD_SCREEN.h: 83: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	84
;LCD_SCREEN.h: 84: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	85
	
l3557:	
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
	
l3559:	
;LCD_SCREEN.h: 86: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	88
	
l703:	
	line	89
;LCD_SCREEN.h: 88: }
;LCD_SCREEN.h: 89: if(mode == 0x08){
	movlw	08h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u5051
	goto	u5050
u5051:
	goto	l711
u5050:
	line	90
	
l3561:	
;LCD_SCREEN.h: 90: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	91
	
l3563:	
;LCD_SCREEN.h: 91: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_DATA@v)
	clrf	(LCD_DATA@v+1)
	
l3565:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5065
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u5065:

	skipc
	goto	u5061
	goto	u5060
u5061:
	goto	l3569
u5060:
	goto	l710
	
l3567:	
	goto	l710
	
l709:	
	line	92
	
l3569:	
;LCD_SCREEN.h: 92: _8bit_[v] = (_data &(0x01 << v))>>v;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCD_DATA+0)+0
	incf	(LCD_DATA@v),w
	goto	u5074
u5075:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u5074:
	addlw	-1
	skipz
	goto	u5075
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@v),w
	goto	u5084
u5085:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u5084:
	addlw	-1
	skipz
	goto	u5085
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
	
l3571:	
	movlw	low(01h)
	addwf	(LCD_DATA@v),f
	skipnc
	incf	(LCD_DATA@v+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@v+1),f
	
l3573:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5095
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u5095:

	skipc
	goto	u5091
	goto	u5090
u5091:
	goto	l3569
u5090:
	
l710:	
	line	94
;LCD_SCREEN.h: 93: }
;LCD_SCREEN.h: 94: RB4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_8bit_),0
	goto	u5101
	goto	u5100
	
u5101:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u5114
u5100:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u5114:
	line	95
;LCD_SCREEN.h: 95: RB5 = _8bit_[0x01];
	btfsc	0+(LCD_DATA@_8bit_)+02h,0
	goto	u5121
	goto	u5120
	
u5121:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u5134
u5120:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u5134:
	line	96
;LCD_SCREEN.h: 96: RB6 = _8bit_[0x02];
	btfsc	0+(LCD_DATA@_8bit_)+04h,0
	goto	u5141
	goto	u5140
	
u5141:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u5154
u5140:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u5154:
	line	97
;LCD_SCREEN.h: 97: RB7 = _8bit_[0x03];
	btfsc	0+(LCD_DATA@_8bit_)+06h,0
	goto	u5161
	goto	u5160
	
u5161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u5174
u5160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u5174:
	line	98
;LCD_SCREEN.h: 98: RC0 = _8bit_[0x04];
	btfsc	0+(LCD_DATA@_8bit_)+08h,0
	goto	u5181
	goto	u5180
	
u5181:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u5194
u5180:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u5194:
	line	99
;LCD_SCREEN.h: 99: RC1 = _8bit_[0x05];
	btfsc	0+(LCD_DATA@_8bit_)+0Ah,0
	goto	u5201
	goto	u5200
	
u5201:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u5214
u5200:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u5214:
	line	100
;LCD_SCREEN.h: 100: RC2 = _8bit_[0x06];
	btfsc	0+(LCD_DATA@_8bit_)+0Ch,0
	goto	u5221
	goto	u5220
	
u5221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u5234
u5220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u5234:
	line	101
;LCD_SCREEN.h: 101: RC3 = _8bit_[0x07];
	btfsc	0+(LCD_DATA@_8bit_)+0Eh,0
	goto	u5241
	goto	u5240
	
u5241:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u5254
u5240:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u5254:
	line	102
;LCD_SCREEN.h: 102: RB1 = 0x01;
	bsf	(49/8),(49)&7
	line	103
;LCD_SCREEN.h: 103: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	104
;LCD_SCREEN.h: 104: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	105
	
l3575:	
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
	
l3577:	
;LCD_SCREEN.h: 106: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	goto	l711
	line	107
	
l708:	
	line	108
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
;; =============== function _LCD_DATA ends ============

	signat	_LCD_DATA,8312
	global	___fttol
psect	text549,local,class=CODE,delta=2
global __ptext549
__ptext549:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   17[BANK0 ] unsigned long 
;;  exp1            1   21[BANK0 ] unsigned char 
;;  sign1           1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text549
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3161:	
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
	goto	u3651
	goto	u3650
u3651:
	goto	l3167
u3650:
	line	50
	
l3163:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1567
	
l3165:	
	goto	l1567
	
l1566:	
	line	51
	
l3167:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3665:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3660:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3169:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3171:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3173:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3175:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3177:	
	btfss	(___fttol@exp1),7
	goto	u3671
	goto	u3670
u3671:
	goto	l3187
u3670:
	line	57
	
l3179:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3681
	goto	u3680
u3681:
	goto	l3185
u3680:
	line	58
	
l3181:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1567
	
l3183:	
	goto	l1567
	
l1569:	
	goto	l3185
	line	59
	
l1570:	
	line	60
	
l3185:	
	movlw	01h
u3695:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3695

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3701
	goto	u3700
u3701:
	goto	l3185
u3700:
	goto	l3197
	
l1571:	
	line	62
	goto	l3197
	
l1568:	
	line	63
	
l3187:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3711
	goto	u3710
u3711:
	goto	l3195
u3710:
	line	64
	
l3189:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1567
	
l3191:	
	goto	l1567
	
l1573:	
	line	65
	goto	l3195
	
l1575:	
	line	66
	
l3193:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3725:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3725
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3195
	line	68
	
l1574:	
	line	65
	
l3195:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l3193
u3730:
	goto	l3197
	
l1576:	
	goto	l3197
	line	69
	
l1572:	
	line	70
	
l3197:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3740
	goto	l3201
u3740:
	line	71
	
l3199:	
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
	goto	l3201
	
l1577:	
	line	72
	
l3201:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1567
	
l3203:	
	line	73
	
l1567:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text550,local,class=CODE,delta=2
global __ptext550
__ptext550:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___lwtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text550
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 4
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3111:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u3490
	goto	l3115
u3490:
	
l3113:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u3501
	goto	u3500
u3501:
	goto	l3121
u3500:
	goto	l3115
	
l1791:	
	line	65
	
l3115:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1792
	
l3117:	
	goto	l1792
	
l1789:	
	line	66
	goto	l3121
	
l1794:	
	line	67
	
l3119:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3515:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3515

	goto	l3121
	line	69
	
l1793:	
	line	66
	
l3121:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3521
	goto	u3520
u3521:
	goto	l3119
u3520:
	goto	l1796
	
l1795:	
	line	70
	goto	l1796
	
l1797:	
	line	71
	
l3123:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3125:	
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
	
l3127:	
	movlw	01h
u3535:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3535

	line	74
	
l1796:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l3123
u3540:
	goto	l3131
	
l1798:	
	line	75
	goto	l3131
	
l1800:	
	line	76
	
l3129:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3555:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3555
	goto	l3131
	line	78
	
l1799:	
	line	75
	
l3131:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3561
	goto	u3560
u3561:
	goto	l3129
u3560:
	
l1801:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3571
	goto	u3570
u3571:
	goto	l1802
u3570:
	line	80
	
l3133:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1802:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3135:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3585:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3580:
	addlw	-1
	skipz
	goto	u3585
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3137:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3590
	goto	l1803
u3590:
	line	84
	
l3139:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1803:	
	line	85
	line	86
	
l1792:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_ADC_INIT
psect	text551,local,class=CODE,delta=2
global __ptext551
__ptext551:

;; *************** function _ADC_INIT *****************
;; Defined at:
;;		line 9 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\ADC_lib.h"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADC_DISPLAY_ANALOG
;;		_main
;;		_ACD_DISPLAY_DIGITAL
;; This function uses a non-reentrant model
;;
psect	text551
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\ADC_lib.h"
	line	9
	global	__size_of_ADC_INIT
	__size_of_ADC_INIT	equ	__end_of_ADC_INIT-_ADC_INIT
	
_ADC_INIT:	
	opt	stack 5
; Regs used in _ADC_INIT: [wreg]
	line	18
	
l3513:	
;ADC_lib.h: 18: INTCONbits.GIE = 0x01;
	bsf	(11),7	;volatile
	line	19
;ADC_lib.h: 19: INTCONbits.PEIE = 0x01;
	bsf	(11),6	;volatile
	line	20
;ADC_lib.h: 20: ADIE = 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1126/8)^080h,(1126)&7
	line	21
	
l3515:	
;ADC_lib.h: 21: ADCON0 = 0b00000101;
	movlw	(05h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	22
;ADC_lib.h: 22: ADCON1 = 0b10001110;
	movlw	(08Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	23
	
l741:	
	return
	opt stack 0
GLOBAL	__end_of_ADC_INIT
	__end_of_ADC_INIT:
;; =============== function _ADC_INIT ends ============

	signat	_ADC_INIT,88
	global	_strlen
psect	text552,local,class=CODE,delta=2
global __ptext552
__ptext552:

;; *************** function _strlen *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR const unsigned char 
;;		 -> ROM(8192), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  s               1    8[BANK0 ] PTR const unsigned char 
;;		 -> ROM(8192), STR_1(9), 
;;  cp              1    9[BANK0 ] PTR const unsigned char 
;;		 -> ROM(8192), STR_1(9), 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    2
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_DISPLAY
;; This function uses a non-reentrant model
;;
psect	text552
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\strlen.c"
	line	5
	global	__size_of_strlen
	__size_of_strlen	equ	__end_of_strlen-_strlen
	
_strlen:	
	opt	stack 4
; Regs used in _strlen: [wreg-fsr0h+status,2+status,0+pclath]
;strlen@s stored from wreg
	line	8
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(strlen@s)
	
l3505:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l3507
	
l1446:	
	line	10
	goto	l3507
	
l1445:	
	line	9
	
l3507:	
	movlw	01h
	addwf	(strlen@cp),f
	movlw	-01h
	addwf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u4781
	goto	u4780
u4781:
	goto	l3507
u4780:
	goto	l3509
	
l1447:	
	line	11
	
l3509:	
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
	goto	l1448
	
l3511:	
	line	12
	
l1448:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_LCD_SETUP_4BIT
psect	text553,local,class=CODE,delta=2
global __ptext553
__ptext553:

;; *************** function _LCD_SETUP_4BIT *****************
;; Defined at:
;;		line 25 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text553
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\LCD_SCREEN.h"
	line	25
	global	__size_of_LCD_SETUP_4BIT
	__size_of_LCD_SETUP_4BIT	equ	__end_of_LCD_SETUP_4BIT-_LCD_SETUP_4BIT
	
_LCD_SETUP_4BIT:	
	opt	stack 6
; Regs used in _LCD_SETUP_4BIT: []
	line	27
	
l3503:	
;LCD_SCREEN.h: 27: TRISB1 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	28
;LCD_SCREEN.h: 28: TRISB2 = 0x00;
	bcf	(1074/8)^080h,(1074)&7
	line	29
;LCD_SCREEN.h: 29: TRISB3 = 0x00;
	bcf	(1075/8)^080h,(1075)&7
	line	31
;LCD_SCREEN.h: 31: TRISC0 = 0x00;
	bcf	(1080/8)^080h,(1080)&7
	line	32
;LCD_SCREEN.h: 32: TRISC1 = 0x00;
	bcf	(1081/8)^080h,(1081)&7
	line	33
;LCD_SCREEN.h: 33: TRISC2 = 0x00;
	bcf	(1082/8)^080h,(1082)&7
	line	34
;LCD_SCREEN.h: 34: TRISC3 = 0x00;
	bcf	(1083/8)^080h,(1083)&7
	line	35
	
l697:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SETUP_4BIT
	__end_of_LCD_SETUP_4BIT:
;; =============== function _LCD_SETUP_4BIT ends ============

	signat	_LCD_SETUP_4BIT,88
	global	_ADC_CONVERT
psect	text554,local,class=CODE,delta=2
global __ptext554
__ptext554:

;; *************** function _ADC_CONVERT *****************
;; Defined at:
;;		line 25 in file "C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\ADC_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text554
	file	"C:\Users\www\Desktop\N\Programming\PIC_MIcrocontroller\ANALOG_INPUTS\ADC_lib.h"
	line	25
	global	__size_of_ADC_CONVERT
	__size_of_ADC_CONVERT	equ	__end_of_ADC_CONVERT-_ADC_CONVERT
	
_ADC_CONVERT:	
	opt	stack 4
; Regs used in _ADC_CONVERT: [wreg+btemp+1]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ADC_CONVERT+2)
	movf	fsr0,w
	movwf	(??_ADC_CONVERT+3)
	movf	pclath,w
	movwf	(??_ADC_CONVERT+4)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ADC_CONVERT+5)
	ljmp	_ADC_CONVERT
psect	text554
	line	26
	
i1l3021:	
;ADC_lib.h: 26: if(ADIF == 0x01){
	btfss	(102/8),(102)&7
	goto	u324_21
	goto	u324_20
u324_21:
	goto	i1l745
u324_20:
	line	27
	
i1l3023:	
;ADC_lib.h: 27: ADC = (ADRESH<<0x08);
	movf	(30),w	;volatile
	movwf	(??_ADC_CONVERT+0)+0
	clrf	(??_ADC_CONVERT+0)+0+1
	movf	(??_ADC_CONVERT+0)+0,w
	movwf	(??_ADC_CONVERT+0)+1
	clrf	(??_ADC_CONVERT+0)+0
	movf	0+(??_ADC_CONVERT+0)+0,w
	movwf	(_ADC)
	movf	1+(??_ADC_CONVERT+0)+0,w
	movwf	(_ADC+1)
	line	28
	
i1l3025:	
;ADC_lib.h: 28: ADC = ADC+ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_ADC),w
	movwf	(_ADC)
	movf	(_ADC+1),w
	skipnc
	incf	(_ADC+1),w
	movwf	((_ADC))+1
	line	29
	
i1l3027:	
;ADC_lib.h: 29: ADIF = 0x00;
	bcf	(102/8),(102)&7
	goto	i1l745
	line	30
	
i1l744:	
	line	31
	
i1l745:	
	movf	(??_ADC_CONVERT+5),w
	movwf	btemp+1
	movf	(??_ADC_CONVERT+4),w
	movwf	pclath
	movf	(??_ADC_CONVERT+3),w
	movwf	fsr0
	swapf	(??_ADC_CONVERT+2)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ADC_CONVERT
	__end_of_ADC_CONVERT:
;; =============== function _ADC_CONVERT ends ============

	signat	_ADC_CONVERT,88
psect	text555,local,class=CODE,delta=2
global __ptext555
__ptext555:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
