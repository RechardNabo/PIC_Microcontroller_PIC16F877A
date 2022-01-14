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
	FNCALL	_main,_KEYPAD_INIT
	FNCALL	_main,_LCD_SETUP_4BIT
	FNCALL	_main,_LCD_INITIALIZE_4BIT
	FNCALL	_main,_LCD_INSTRUCTION_4BIT
	FNCALL	_main,_LCD_DISPLAY
	FNCALL	_main,_KEYPAD_KEYS
	FNCALL	_main,_LCD_DATA
	FNCALL	_LCD_DISPLAY,_strlen
	FNCALL	_LCD_DISPLAY,_LCD_DATA
	FNCALL	_LCD_INITIALIZE_4BIT,_LCD_INSTRUCTION_4BIT
	FNROOT	_main
	global	_number
	global	_PORTD
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:
_PORTD	set	8
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
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_TRISD
_TRISD	set	136
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
	file	"KEYPAD_INTERFACE_LCD.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_number:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_KEYPAD_INIT
?_KEYPAD_INIT:	; 0 bytes @ 0x0
	global	??_KEYPAD_INIT
??_KEYPAD_INIT:	; 0 bytes @ 0x0
	global	?_LCD_SETUP_4BIT
?_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	??_LCD_SETUP_4BIT
??_LCD_SETUP_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_INSTRUCTION_4BIT
?_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	??_LCD_INSTRUCTION_4BIT
??_LCD_INSTRUCTION_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_INITIALIZE_4BIT
?_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x0
	global	?_LCD_DISPLAY
?_LCD_DISPLAY:	; 0 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?_KEYPAD_KEYS
?_KEYPAD_KEYS:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	2
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
	global	??_KEYPAD_KEYS
??_KEYPAD_KEYS:	; 0 bytes @ 0x2
	ds	2
	global	?_LCD_DATA
?_LCD_DATA:	; 0 bytes @ 0x4
	global	LCD_DATA@mode
LCD_DATA@mode:	; 2 bytes @ 0x4
	ds	1
	global	??_LCD_INITIALIZE_4BIT
??_LCD_INITIALIZE_4BIT:	; 0 bytes @ 0x5
	ds	1
	global	??_LCD_DATA
??_LCD_DATA:	; 0 bytes @ 0x6
	ds	2
	global	strlen@s
strlen@s:	; 1 bytes @ 0x8
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x9
	ds	2
	global	??_LCD_DISPLAY
??_LCD_DISPLAY:	; 0 bytes @ 0xB
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	LCD_INSTRUCTION_4BIT@instruction
LCD_INSTRUCTION_4BIT@instruction:	; 1 bytes @ 0x0
	global	LCD_DATA@_8bit_
LCD_DATA@_8bit_:	; 16 bytes @ 0x0
	ds	1
	global	LCD_INSTRUCTION_4BIT@_4bit_
LCD_INSTRUCTION_4BIT@_4bit_:	; 8 bytes @ 0x1
	ds	8
	global	LCD_INSTRUCTION_4BIT@data
LCD_INSTRUCTION_4BIT@data:	; 1 bytes @ 0x9
	ds	1
	global	LCD_INSTRUCTION_4BIT@x
LCD_INSTRUCTION_4BIT@x:	; 2 bytes @ 0xA
	ds	2
	global	LCD_INSTRUCTION_4BIT@x_1255
LCD_INSTRUCTION_4BIT@x_1255:	; 2 bytes @ 0xC
	ds	4
	global	LCD_DATA@_4bit_
LCD_DATA@_4bit_:	; 8 bytes @ 0x10
	ds	8
	global	LCD_DATA@data
LCD_DATA@data:	; 1 bytes @ 0x18
	ds	1
	global	LCD_DATA@_data
LCD_DATA@_data:	; 1 bytes @ 0x19
	ds	1
	global	LCD_DATA@x
LCD_DATA@x:	; 2 bytes @ 0x1A
	ds	2
	global	LCD_DATA@x_1248
LCD_DATA@x_1248:	; 2 bytes @ 0x1C
	ds	2
	global	LCD_DATA@v
LCD_DATA@v:	; 2 bytes @ 0x1E
	ds	2
	global	LCD_DISPLAY@length
LCD_DISPLAY@length:	; 2 bytes @ 0x20
	ds	2
	global	LCD_DISPLAY@string
LCD_DISPLAY@string:	; 1 bytes @ 0x22
	ds	1
	global	LCD_DISPLAY@x
LCD_DISPLAY@x:	; 2 bytes @ 0x23
	ds	2
;;Data sizes: Strings 9, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     37      39
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strlen	unsigned int  size(1) Largest target is 9
;;		 -> STR_1(CODE[9]), 
;;
;; ?_KEYPAD_KEYS	unsigned int  size(1) Largest target is 0
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
;;   _main->_LCD_DATA
;;   _LCD_DISPLAY->_LCD_DATA
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
;;   _LCD_DATA->_KEYPAD_KEYS
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_LCD_DISPLAY
;;   _LCD_DISPLAY->_LCD_DATA
;;   _LCD_INITIALIZE_4BIT->_LCD_INSTRUCTION_4BIT
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
;; (0) _main                                                 2     2      0    3286
;;                                             11 COMMON     2     2      0
;;                        _KEYPAD_INIT
;;                     _LCD_SETUP_4BIT
;;                _LCD_INITIALIZE_4BIT
;;               _LCD_INSTRUCTION_4BIT
;;                        _LCD_DISPLAY
;;                        _KEYPAD_KEYS
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DISPLAY                                          5     5      0    1177
;;                                             32 BANK0      5     5      0
;;                             _strlen
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INITIALIZE_4BIT                                  0     0      0     567
;;               _LCD_INSTRUCTION_4BIT
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INSTRUCTION_4BIT                                19    19      0     567
;;                                              0 COMMON     5     5      0
;;                                              0 BANK0     14    14      0
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DATA                                            39    37      2     975
;;                                              4 COMMON     7     5      2
;;                                              0 BANK0     32    32      0
;;                        _KEYPAD_KEYS (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _KEYPAD_KEYS                                          4     2      2       0
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (3) _strlen                                              10     8      2      89
;;                                              0 COMMON    10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SETUP_4BIT                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _KEYPAD_INIT                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _KEYPAD_INIT
;;   _LCD_SETUP_4BIT
;;   _LCD_INITIALIZE_4BIT
;;     _LCD_INSTRUCTION_4BIT
;;   _LCD_INSTRUCTION_4BIT
;;   _LCD_DISPLAY
;;     _strlen
;;     _LCD_DATA
;;       _KEYPAD_KEYS (ARG)
;;   _KEYPAD_KEYS
;;   _LCD_DATA
;;     _KEYPAD_KEYS (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      34       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     25      27       5       48.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      37      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 9 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  747[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_KEYPAD_INIT
;;		_LCD_SETUP_4BIT
;;		_LCD_INITIALIZE_4BIT
;;		_LCD_INSTRUCTION_4BIT
;;		_LCD_DISPLAY
;;		_KEYPAD_KEYS
;;		_LCD_DATA
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\Main.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l3024:	
;Main.c: 10: KEYPAD_INIT();
	fcall	_KEYPAD_INIT
	line	11
	
l3026:	
;Main.c: 11: LCD_SETUP_4BIT();
	fcall	_LCD_SETUP_4BIT
	line	12
	
l3028:	
;Main.c: 12: LCD_INITIALIZE_4BIT();
	fcall	_LCD_INITIALIZE_4BIT
	goto	l3030
	line	13
;Main.c: 13: while(0x01){
	
l748:	
	line	14
	
l3030:	
;Main.c: 14: LCD_INSTRUCTION_4BIT(0x80);
	movlw	(080h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	15
	
l3032:	
;Main.c: 15: LCD_DISPLAY("Value : ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DISPLAY
	line	16
	
l3034:	
;Main.c: 16: LCD_INSTRUCTION_4BIT(0x89);
	movlw	(089h)
	fcall	_LCD_INSTRUCTION_4BIT
	line	17
	
l3036:	
;Main.c: 17: LCD_DATA((int)KEYPAD_KEYS()+0x30,0x04);
	movlw	low(04h)
	movwf	(?_LCD_DATA)
	movlw	high(04h)
	movwf	((?_LCD_DATA))+1
	fcall	_KEYPAD_KEYS
	movf	(0+(?_KEYPAD_KEYS)),w
	addlw	030h
	fcall	_LCD_DATA
	line	18
	
l3038:	
;Main.c: 18: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u4107:
	decfsz	((??_main+0)+0),f
	goto	u4107
	decfsz	((??_main+0)+0+1),f
	goto	u4107
	clrwdt
opt asmopt_on

	goto	l3030
	line	19
	
l749:	
	line	13
	goto	l3030
	
l750:	
	line	21
;Main.c: 19: }
;Main.c: 20: return 0;
;	Return value of _main is never used
	
l751:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_LCD_DISPLAY
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:

;; *************** function _LCD_DISPLAY *****************
;; Defined at:
;;		line 181 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
psect	text228
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
	
l3014:	
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
	
l3016:	
;LCD_SCREEN.h: 183: unsigned int x;
;LCD_SCREEN.h: 184: for(x = 0x00 ; x < length ; x-=-0x01){
	clrf	(LCD_DISPLAY@x)
	clrf	(LCD_DISPLAY@x+1)
	goto	l3022
	
l743:	
	line	185
	
l3018:	
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
	
l3020:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_DISPLAY@x),f
	movlw	high(0FFFFh)
	skipc
	decf	(LCD_DISPLAY@x+1),f
	subwf	(LCD_DISPLAY@x+1),f
	goto	l3022
	
l742:	
	
l3022:	
	movf	(LCD_DISPLAY@length+1),w
	subwf	(LCD_DISPLAY@x+1),w
	skipz
	goto	u4095
	movf	(LCD_DISPLAY@length),w
	subwf	(LCD_DISPLAY@x),w
u4095:
	skipc
	goto	u4091
	goto	u4090
u4091:
	goto	l3018
u4090:
	goto	l745
	
l744:	
	line	187
	
l745:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DISPLAY
	__end_of_LCD_DISPLAY:
;; =============== function _LCD_DISPLAY ends ============

	signat	_LCD_DISPLAY,4216
	global	_LCD_INITIALIZE_4BIT
psect	text229,local,class=CODE,delta=2
global __ptext229
__ptext229:

;; *************** function _LCD_INITIALIZE_4BIT *****************
;; Defined at:
;;		line 165 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
psect	text229
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
	line	165
	global	__size_of_LCD_INITIALIZE_4BIT
	__size_of_LCD_INITIALIZE_4BIT	equ	__end_of_LCD_INITIALIZE_4BIT-_LCD_INITIALIZE_4BIT
	
_LCD_INITIALIZE_4BIT:	
	opt	stack 6
; Regs used in _LCD_INITIALIZE_4BIT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	166
	
l3012:	
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
	
l736:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INITIALIZE_4BIT
	__end_of_LCD_INITIALIZE_4BIT:
;; =============== function _LCD_INITIALIZE_4BIT ends ============

	signat	_LCD_INITIALIZE_4BIT,88
	global	_LCD_INSTRUCTION_4BIT
psect	text230,local,class=CODE,delta=2
global __ptext230
__ptext230:

;; *************** function _LCD_INSTRUCTION_4BIT *****************
;; Defined at:
;;		line 110 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
psect	text230
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
	
l2976:	
;LCD_SCREEN.h: 111: int _4bit_[0x04];
;LCD_SCREEN.h: 112: unsigned char data = instruction;
	movf	(LCD_INSTRUCTION_4BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movf	(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	113
	
l2978:	
;LCD_SCREEN.h: 113: data = data>>0x04;
	movf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	movlw	04h
u3845:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
	addlw	-1
	skipz
	goto	u3845
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	movf	(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(LCD_INSTRUCTION_4BIT@data)
	line	114
	
l2980:	
;LCD_SCREEN.h: 114: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x)
	clrf	(LCD_INSTRUCTION_4BIT@x+1)
	
l2982:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3855
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u3855:

	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l2986
u3850:
	goto	l725
	
l2984:	
	goto	l725
	
l724:	
	line	115
	
l2986:	
;LCD_SCREEN.h: 115: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u3864
u3865:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u3864:
	addlw	-1
	skipz
	goto	u3865
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x),w
	goto	u3874
u3875:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u3874:
	addlw	-1
	skipz
	goto	u3875
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
	
l2988:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x+1),f
	
l2990:	
	movf	(LCD_INSTRUCTION_4BIT@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3885
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x),w
u3885:

	skipc
	goto	u3881
	goto	u3880
u3881:
	goto	l2986
u3880:
	
l725:	
	line	117
;LCD_SCREEN.h: 116: }
;LCD_SCREEN.h: 117: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u3891
	goto	u3890
	
u3891:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3904
u3890:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3904:
	line	118
;LCD_SCREEN.h: 118: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u3911
	goto	u3910
	
u3911:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3924
u3910:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3924:
	line	119
;LCD_SCREEN.h: 119: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u3931
	goto	u3930
	
u3931:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3944
u3930:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3944:
	line	120
;LCD_SCREEN.h: 120: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u3951
	goto	u3950
	
u3951:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3964
u3950:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3964:
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
	
l2992:	
;LCD_SCREEN.h: 124: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	251
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u4117:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u4117
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u4117
	nop2
opt asmopt_on

	line	125
	
l2994:	
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
	
l2996:	
;LCD_SCREEN.h: 128: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_INSTRUCTION_4BIT@x_1255)
	clrf	(LCD_INSTRUCTION_4BIT@x_1255+1)
	
l2998:	
	movf	(LCD_INSTRUCTION_4BIT@x_1255+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3975
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1255),w
u3975:

	skipc
	goto	u3971
	goto	u3970
u3971:
	goto	l3002
u3970:
	goto	l727
	
l3000:	
	goto	l727
	
l726:	
	line	129
	
l3002:	
;LCD_SCREEN.h: 129: _4bit_[x] = (data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_4BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_4BIT@x_1255),w
	goto	u3984
u3985:
	clrc
	rlf	(??_LCD_INSTRUCTION_4BIT+0)+0,f
u3984:
	addlw	-1
	skipz
	goto	u3985
	movf	0+(??_LCD_INSTRUCTION_4BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_4BIT@data),w
	movwf	(??_LCD_INSTRUCTION_4BIT+1)+0
	incf	(LCD_INSTRUCTION_4BIT@x_1255),w
	goto	u3994
u3995:
	clrc
	rrf	(??_LCD_INSTRUCTION_4BIT+1)+0,f
u3994:
	addlw	-1
	skipz
	goto	u3995
	movf	0+(??_LCD_INSTRUCTION_4BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_4BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_4BIT+2)+0+1
	movf	(LCD_INSTRUCTION_4BIT@x_1255),w
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
	
l3004:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1255),f
	skipnc
	incf	(LCD_INSTRUCTION_4BIT@x_1255+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_4BIT@x_1255+1),f
	
l3006:	
	movf	(LCD_INSTRUCTION_4BIT@x_1255+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4005
	movlw	low(04h)
	subwf	(LCD_INSTRUCTION_4BIT@x_1255),w
u4005:

	skipc
	goto	u4001
	goto	u4000
u4001:
	goto	l3002
u4000:
	
l727:	
	line	131
;LCD_SCREEN.h: 130: }
;LCD_SCREEN.h: 131: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_4BIT@_4bit_),0
	goto	u4011
	goto	u4010
	
u4011:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u4024
u4010:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u4024:
	line	132
;LCD_SCREEN.h: 132: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+02h,0
	goto	u4031
	goto	u4030
	
u4031:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u4044
u4030:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u4044:
	line	133
;LCD_SCREEN.h: 133: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+04h,0
	goto	u4051
	goto	u4050
	
u4051:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u4064
u4050:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u4064:
	line	134
;LCD_SCREEN.h: 134: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_4BIT@_4bit_)+06h,0
	goto	u4071
	goto	u4070
	
u4071:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u4084
u4070:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u4084:
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
	
l3008:	
;LCD_SCREEN.h: 138: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	movlw	251
movwf	((??_LCD_INSTRUCTION_4BIT+0)+0),f
u4127:
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0),f
	goto	u4127
	decfsz	((??_LCD_INSTRUCTION_4BIT+0)+0+1),f
	goto	u4127
	nop2
opt asmopt_on

	line	139
	
l3010:	
;LCD_SCREEN.h: 139: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	141
	
l728:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INSTRUCTION_4BIT
	__end_of_LCD_INSTRUCTION_4BIT:
;; =============== function _LCD_INSTRUCTION_4BIT ends ============

	signat	_LCD_INSTRUCTION_4BIT,4216
	global	_LCD_DATA
psect	text231,local,class=CODE,delta=2
global __ptext231
__ptext231:

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 55 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;;  mode            2    4[COMMON] int 
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
;; This function uses a non-reentrant model
;;
psect	text231
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
	
l2922:	
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
	goto	u3371
	goto	u3370
u3371:
	goto	l713
u3370:
	line	60
	
l2924:	
;LCD_SCREEN.h: 60: _data = _data>>0x04;
	movf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+0)+0
	movlw	04h
u3385:
	clrc
	rrf	(??_LCD_DATA+0)+0,f
	addlw	-1
	skipz
	goto	u3385
	movf	0+(??_LCD_DATA+0)+0,w
	movwf	(??_LCD_DATA+1)+0
	movf	(??_LCD_DATA+1)+0,w
	movwf	(LCD_DATA@_data)
	line	61
	
l2926:	
;LCD_SCREEN.h: 61: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_DATA@x)
	clrf	(LCD_DATA@x+1)
	
l2928:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3395
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3395:

	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l2932
u3390:
	goto	l715
	
l2930:	
	goto	l715
	
l714:	
	line	62
	
l2932:	
;LCD_SCREEN.h: 62: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x),w
	goto	u3404
u3405:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3404:
	addlw	-1
	skipz
	goto	u3405
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x),w
	goto	u3414
u3415:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3414:
	addlw	-1
	skipz
	goto	u3415
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
	
l2934:	
	movlw	low(01h)
	addwf	(LCD_DATA@x),f
	skipnc
	incf	(LCD_DATA@x+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x+1),f
	
l2936:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3425
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3425:

	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l2932
u3420:
	
l715:	
	line	64
;LCD_SCREEN.h: 63: }
;LCD_SCREEN.h: 64: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3431
	goto	u3430
	
u3431:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3444
u3430:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3444:
	line	65
;LCD_SCREEN.h: 65: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3451
	goto	u3450
	
u3451:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3464
u3450:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3464:
	line	66
;LCD_SCREEN.h: 66: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3471
	goto	u3470
	
u3471:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3484
u3470:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3484:
	line	67
;LCD_SCREEN.h: 67: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3491
	goto	u3490
	
u3491:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3504
u3490:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3504:
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
	
l2938:	
;LCD_SCREEN.h: 71: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u4137:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u4137
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u4137
	nop2
opt asmopt_on

	line	72
	
l2940:	
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
	
l2942:	
;LCD_SCREEN.h: 75: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_DATA@x_1248)
	clrf	(LCD_DATA@x_1248+1)
	
l2944:	
	movf	(LCD_DATA@x_1248+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3515
	movlw	low(04h)
	subwf	(LCD_DATA@x_1248),w
u3515:

	skipc
	goto	u3511
	goto	u3510
u3511:
	goto	l2948
u3510:
	goto	l717
	
l2946:	
	goto	l717
	
l716:	
	line	76
	
l2948:	
;LCD_SCREEN.h: 76: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x_1248),w
	goto	u3524
u3525:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3524:
	addlw	-1
	skipz
	goto	u3525
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x_1248),w
	goto	u3534
u3535:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3534:
	addlw	-1
	skipz
	goto	u3535
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x_1248),w
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
	
l2950:	
	movlw	low(01h)
	addwf	(LCD_DATA@x_1248),f
	skipnc
	incf	(LCD_DATA@x_1248+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x_1248+1),f
	
l2952:	
	movf	(LCD_DATA@x_1248+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3545
	movlw	low(04h)
	subwf	(LCD_DATA@x_1248),w
u3545:

	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l2948
u3540:
	
l717:	
	line	78
;LCD_SCREEN.h: 77: }
;LCD_SCREEN.h: 78: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3551
	goto	u3550
	
u3551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3564
u3550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3564:
	line	79
;LCD_SCREEN.h: 79: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3571
	goto	u3570
	
u3571:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3584
u3570:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3584:
	line	80
;LCD_SCREEN.h: 80: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3591
	goto	u3590
	
u3591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3604
u3590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3604:
	line	81
;LCD_SCREEN.h: 81: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3611
	goto	u3610
	
u3611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3624
u3610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3624:
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
	
l2954:	
;LCD_SCREEN.h: 85: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u4147:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u4147
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u4147
	nop2
opt asmopt_on

	line	86
	
l2956:	
;LCD_SCREEN.h: 86: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	88
	
l713:	
	line	89
;LCD_SCREEN.h: 88: }
;LCD_SCREEN.h: 89: if(mode == 0x08){
	movlw	08h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l721
u3630:
	line	90
	
l2958:	
;LCD_SCREEN.h: 90: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	91
	
l2960:	
;LCD_SCREEN.h: 91: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_DATA@v)
	clrf	(LCD_DATA@v+1)
	
l2962:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3645
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3645:

	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l2966
u3640:
	goto	l720
	
l2964:	
	goto	l720
	
l719:	
	line	92
	
l2966:	
;LCD_SCREEN.h: 92: _8bit_[v] = (_data &(0x01 << v))>>v;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@v),w
	goto	u3654
u3655:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3654:
	addlw	-1
	skipz
	goto	u3655
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@v),w
	goto	u3664
u3665:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3664:
	addlw	-1
	skipz
	goto	u3665
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
	
l2968:	
	movlw	low(01h)
	addwf	(LCD_DATA@v),f
	skipnc
	incf	(LCD_DATA@v+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@v+1),f
	
l2970:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3675
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3675:

	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l2966
u3670:
	
l720:	
	line	94
;LCD_SCREEN.h: 93: }
;LCD_SCREEN.h: 94: RB4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_8bit_),0
	goto	u3681
	goto	u3680
	
u3681:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u3694
u3680:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u3694:
	line	95
;LCD_SCREEN.h: 95: RB5 = _8bit_[0x01];
	btfsc	0+(LCD_DATA@_8bit_)+02h,0
	goto	u3701
	goto	u3700
	
u3701:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u3714
u3700:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u3714:
	line	96
;LCD_SCREEN.h: 96: RB6 = _8bit_[0x02];
	btfsc	0+(LCD_DATA@_8bit_)+04h,0
	goto	u3721
	goto	u3720
	
u3721:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u3734
u3720:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u3734:
	line	97
;LCD_SCREEN.h: 97: RB7 = _8bit_[0x03];
	btfsc	0+(LCD_DATA@_8bit_)+06h,0
	goto	u3741
	goto	u3740
	
u3741:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u3754
u3740:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u3754:
	line	98
;LCD_SCREEN.h: 98: RC0 = _8bit_[0x04];
	btfsc	0+(LCD_DATA@_8bit_)+08h,0
	goto	u3761
	goto	u3760
	
u3761:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3774
u3760:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3774:
	line	99
;LCD_SCREEN.h: 99: RC1 = _8bit_[0x05];
	btfsc	0+(LCD_DATA@_8bit_)+0Ah,0
	goto	u3781
	goto	u3780
	
u3781:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3794
u3780:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3794:
	line	100
;LCD_SCREEN.h: 100: RC2 = _8bit_[0x06];
	btfsc	0+(LCD_DATA@_8bit_)+0Ch,0
	goto	u3801
	goto	u3800
	
u3801:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3814
u3800:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3814:
	line	101
;LCD_SCREEN.h: 101: RC3 = _8bit_[0x07];
	btfsc	0+(LCD_DATA@_8bit_)+0Eh,0
	goto	u3821
	goto	u3820
	
u3821:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3834
u3820:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3834:
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
	
l2972:	
;LCD_SCREEN.h: 105: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	118
movwf	((??_LCD_DATA+0)+0),f
u4157:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u4157
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u4157
	clrwdt
opt asmopt_on

	line	106
	
l2974:	
;LCD_SCREEN.h: 106: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	goto	l721
	line	107
	
l718:	
	line	108
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
;; =============== function _LCD_DATA ends ============

	signat	_LCD_DATA,8312
	global	_KEYPAD_KEYS
psect	text232,local,class=CODE,delta=2
global __ptext232
__ptext232:

;; *************** function _KEYPAD_KEYS *****************
;; Defined at:
;;		line 9 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\KEYPAD_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text232
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\KEYPAD_lib.h"
	line	9
	global	__size_of_KEYPAD_KEYS
	__size_of_KEYPAD_KEYS	equ	__end_of_KEYPAD_KEYS-_KEYPAD_KEYS
	
_KEYPAD_KEYS:	
	opt	stack 7
; Regs used in _KEYPAD_KEYS: [wreg+status,2+status,0]
	line	11
	
l2872:	
;KEYPAD_lib.h: 11: PORTD = 0b11000001;
	movlw	(0C1h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	12
	
l2874:	
;KEYPAD_lib.h: 12: if(RD3 == 0x01){
	btfss	(67/8),(67)&7
	goto	u3271
	goto	u3270
u3271:
	goto	l2878
u3270:
	line	13
	
l2876:	
;KEYPAD_lib.h: 13: number = 0x03;
	movlw	low(03h)
	movwf	(_number)
	movlw	high(03h)
	movwf	((_number))+1
	goto	l2878
	line	14
	
l694:	
	line	15
	
l2878:	
;KEYPAD_lib.h: 14: }
;KEYPAD_lib.h: 15: if(RD4 == 0x01){
	btfss	(68/8),(68)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l2882
u3280:
	line	16
	
l2880:	
;KEYPAD_lib.h: 16: number = 0x06;
	movlw	low(06h)
	movwf	(_number)
	movlw	high(06h)
	movwf	((_number))+1
	goto	l2882
	line	17
	
l695:	
	line	18
	
l2882:	
;KEYPAD_lib.h: 17: }
;KEYPAD_lib.h: 18: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l696
u3290:
	line	19
	
l2884:	
;KEYPAD_lib.h: 19: number = 0x09;
	movlw	low(09h)
	movwf	(_number)
	movlw	high(09h)
	movwf	((_number))+1
	line	20
	
l696:	
	line	21
;KEYPAD_lib.h: 20: }
;KEYPAD_lib.h: 21: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4167:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4167
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4167
	nop2
opt asmopt_on

	line	23
;KEYPAD_lib.h: 23: PORTD = 0b10000010;
	movlw	(082h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	24
	
l2886:	
;KEYPAD_lib.h: 24: if(RD3 == 0x01){
	btfss	(67/8),(67)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l2890
u3300:
	line	25
	
l2888:	
;KEYPAD_lib.h: 25: number = 0x02;
	movlw	low(02h)
	movwf	(_number)
	movlw	high(02h)
	movwf	((_number))+1
	goto	l2890
	line	26
	
l697:	
	line	27
	
l2890:	
;KEYPAD_lib.h: 26: }
;KEYPAD_lib.h: 27: if(RD4 == 0x01){
	btfss	(68/8),(68)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l2894
u3310:
	line	28
	
l2892:	
;KEYPAD_lib.h: 28: number = 0x05;
	movlw	low(05h)
	movwf	(_number)
	movlw	high(05h)
	movwf	((_number))+1
	goto	l2894
	line	29
	
l698:	
	line	30
	
l2894:	
;KEYPAD_lib.h: 29: }
;KEYPAD_lib.h: 30: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l2898
u3320:
	line	31
	
l2896:	
;KEYPAD_lib.h: 31: number = 0x08;
	movlw	low(08h)
	movwf	(_number)
	movlw	high(08h)
	movwf	((_number))+1
	goto	l2898
	line	32
	
l699:	
	line	33
	
l2898:	
;KEYPAD_lib.h: 32: }
;KEYPAD_lib.h: 33: if(RD6 == 0x01){
	btfss	(70/8),(70)&7
	goto	u3331
	goto	u3330
u3331:
	goto	l2902
u3330:
	line	34
	
l2900:	
;KEYPAD_lib.h: 34: number = 0x00;
	clrf	(_number)
	clrf	(_number+1)
	goto	l2902
	line	35
	
l700:	
	line	36
	
l2902:	
;KEYPAD_lib.h: 35: }
;KEYPAD_lib.h: 36: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4177:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4177
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4177
	nop2
opt asmopt_on

	line	38
	
l2904:	
;KEYPAD_lib.h: 38: PORTD = 0b11000100;
	movlw	(0C4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	39
	
l2906:	
;KEYPAD_lib.h: 39: if(RD3 == 0x01){
	btfss	(67/8),(67)&7
	goto	u3341
	goto	u3340
u3341:
	goto	l2910
u3340:
	line	40
	
l2908:	
;KEYPAD_lib.h: 40: number = 0x01;
	movlw	low(01h)
	movwf	(_number)
	movlw	high(01h)
	movwf	((_number))+1
	goto	l2910
	line	41
	
l701:	
	line	42
	
l2910:	
;KEYPAD_lib.h: 41: }
;KEYPAD_lib.h: 42: if(RD4 == 0x01){
	btfss	(68/8),(68)&7
	goto	u3351
	goto	u3350
u3351:
	goto	l2914
u3350:
	line	43
	
l2912:	
;KEYPAD_lib.h: 43: number = 0x04;
	movlw	low(04h)
	movwf	(_number)
	movlw	high(04h)
	movwf	((_number))+1
	goto	l2914
	line	44
	
l702:	
	line	45
	
l2914:	
;KEYPAD_lib.h: 44: }
;KEYPAD_lib.h: 45: if(RD5 == 0x01){
	btfss	(69/8),(69)&7
	goto	u3361
	goto	u3360
u3361:
	goto	l703
u3360:
	line	46
	
l2916:	
;KEYPAD_lib.h: 46: number = 0x07;
	movlw	low(07h)
	movwf	(_number)
	movlw	high(07h)
	movwf	((_number))+1
	line	47
	
l703:	
	line	48
;KEYPAD_lib.h: 47: }
;KEYPAD_lib.h: 48: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u4187:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u4187
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u4187
	nop2
opt asmopt_on

	line	50
	
l2918:	
;KEYPAD_lib.h: 50: return number;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_number+1),w
	clrf	(?_KEYPAD_KEYS+1)
	addwf	(?_KEYPAD_KEYS+1)
	movf	(_number),w
	clrf	(?_KEYPAD_KEYS)
	addwf	(?_KEYPAD_KEYS)

	goto	l704
	
l2920:	
	line	51
	
l704:	
	return
	opt stack 0
GLOBAL	__end_of_KEYPAD_KEYS
	__end_of_KEYPAD_KEYS:
;; =============== function _KEYPAD_KEYS ends ============

	signat	_KEYPAD_KEYS,90
	global	_strlen
psect	text233,local,class=CODE,delta=2
global __ptext233
__ptext233:

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
psect	text233
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
	
l2864:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2866
	
l1429:	
	line	10
	goto	l2866
	
l1428:	
	line	9
	
l2866:	
	movlw	01h
	addwf	(strlen@cp),f
	movlw	-01h
	addwf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3261
	goto	u3260
u3261:
	goto	l2866
u3260:
	goto	l2868
	
l1430:	
	line	11
	
l2868:	
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
	goto	l1431
	
l2870:	
	line	12
	
l1431:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_LCD_SETUP_4BIT
psect	text234,local,class=CODE,delta=2
global __ptext234
__ptext234:

;; *************** function _LCD_SETUP_4BIT *****************
;; Defined at:
;;		line 25 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
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
psect	text234
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\LCD_SCREEN.h"
	line	25
	global	__size_of_LCD_SETUP_4BIT
	__size_of_LCD_SETUP_4BIT	equ	__end_of_LCD_SETUP_4BIT-_LCD_SETUP_4BIT
	
_LCD_SETUP_4BIT:	
	opt	stack 7
; Regs used in _LCD_SETUP_4BIT: []
	line	27
	
l1806:	
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
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SETUP_4BIT
	__end_of_LCD_SETUP_4BIT:
;; =============== function _LCD_SETUP_4BIT ends ============

	signat	_LCD_SETUP_4BIT,88
	global	_KEYPAD_INIT
psect	text235,local,class=CODE,delta=2
global __ptext235
__ptext235:

;; *************** function _KEYPAD_INIT *****************
;; Defined at:
;;		line 5 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\KEYPAD_lib.h"
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
psect	text235
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_LCD\KEYPAD_lib.h"
	line	5
	global	__size_of_KEYPAD_INIT
	__size_of_KEYPAD_INIT	equ	__end_of_KEYPAD_INIT-_KEYPAD_INIT
	
_KEYPAD_INIT:	
	opt	stack 7
; Regs used in _KEYPAD_INIT: [wreg]
	line	6
	
l1804:	
;KEYPAD_lib.h: 6: TRISD = 0b11111000;
	movlw	(0F8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	7
	
l691:	
	return
	opt stack 0
GLOBAL	__end_of_KEYPAD_INIT
	__end_of_KEYPAD_INIT:
;; =============== function _KEYPAD_INIT ends ============

	signat	_KEYPAD_INIT,88
psect	text236,local,class=CODE,delta=2
global __ptext236
__ptext236:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
