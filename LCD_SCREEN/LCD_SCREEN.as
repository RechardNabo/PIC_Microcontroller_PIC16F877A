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
	FNCALL	_main,_LCD_SETUP_8BIT
	FNCALL	_main,_LCD_INITIALIZE_8BIT
	FNCALL	_main,_LCD_INSTRUCTION_8BIT
	FNCALL	_main,_LCD_DISPLAY
	FNCALL	_LCD_DISPLAY,_strlen
	FNCALL	_LCD_DISPLAY,_LCD_DATA
	FNCALL	_LCD_INITIALIZE_8BIT,_LCD_INSTRUCTION_8BIT
	FNROOT	_main
	global	_CARRY
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:
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
	retlw	78	;'N'
	retlw	104	;'h'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	104	;'h'
	retlw	108	;'l'
	retlw	97	;'a'
	retlw	0
psect	strings
	file	"LCD_SCREEN.as"
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
	global	?_LCD_SETUP_8BIT
?_LCD_SETUP_8BIT:	; 0 bytes @ 0x0
	global	??_LCD_SETUP_8BIT
??_LCD_SETUP_8BIT:	; 0 bytes @ 0x0
	global	?_LCD_DATA
?_LCD_DATA:	; 0 bytes @ 0x0
	global	?_LCD_INSTRUCTION_8BIT
?_LCD_INSTRUCTION_8BIT:	; 0 bytes @ 0x0
	global	??_LCD_INSTRUCTION_8BIT
??_LCD_INSTRUCTION_8BIT:	; 0 bytes @ 0x0
	global	?_LCD_INITIALIZE_8BIT
?_LCD_INITIALIZE_8BIT:	; 0 bytes @ 0x0
	global	?_LCD_DISPLAY
?_LCD_DISPLAY:	; 0 bytes @ 0x0
	global	?_strlen
?_strlen:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	LCD_DATA@mode
LCD_DATA@mode:	; 2 bytes @ 0x0
	ds	2
	global	??_strlen
??_strlen:	; 0 bytes @ 0x2
	global	??_LCD_DATA
??_LCD_DATA:	; 0 bytes @ 0x2
	ds	3
	global	??_LCD_INITIALIZE_8BIT
??_LCD_INITIALIZE_8BIT:	; 0 bytes @ 0x5
	ds	3
	global	strlen@s
strlen@s:	; 1 bytes @ 0x8
	ds	1
	global	strlen@cp
strlen@cp:	; 1 bytes @ 0x9
	ds	1
	global	??_LCD_DISPLAY
??_LCD_DISPLAY:	; 0 bytes @ 0xA
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	LCD_DATA@_8bit_
LCD_DATA@_8bit_:	; 16 bytes @ 0x0
	global	LCD_INSTRUCTION_8BIT@_8bit_
LCD_INSTRUCTION_8BIT@_8bit_:	; 16 bytes @ 0x0
	ds	16
	global	LCD_INSTRUCTION_8BIT@instruction
LCD_INSTRUCTION_8BIT@instruction:	; 1 bytes @ 0x10
	global	LCD_DATA@_4bit_
LCD_DATA@_4bit_:	; 8 bytes @ 0x10
	ds	1
	global	LCD_INSTRUCTION_8BIT@data
LCD_INSTRUCTION_8BIT@data:	; 1 bytes @ 0x11
	ds	1
	global	LCD_INSTRUCTION_8BIT@v
LCD_INSTRUCTION_8BIT@v:	; 2 bytes @ 0x12
	ds	6
	global	LCD_DATA@data
LCD_DATA@data:	; 1 bytes @ 0x18
	ds	1
	global	LCD_DATA@_data
LCD_DATA@_data:	; 1 bytes @ 0x19
	ds	1
	global	LCD_DATA@x
LCD_DATA@x:	; 2 bytes @ 0x1A
	ds	2
	global	LCD_DATA@x_1245
LCD_DATA@x_1245:	; 2 bytes @ 0x1C
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
;;Data sizes: Strings 9, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80     37      37
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strlen	unsigned int  size(1) Largest target is 9
;;		 -> STR_1(CODE[9]), 
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
;;   _LCD_DISPLAY->_strlen
;;   _LCD_INITIALIZE_8BIT->_LCD_INSTRUCTION_8BIT
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_LCD_DISPLAY
;;   _LCD_DISPLAY->_LCD_DATA
;;   _LCD_INITIALIZE_8BIT->_LCD_INSTRUCTION_8BIT
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
;; (0) _main                                                 2     2      0    1905
;;                                             10 COMMON     2     2      0
;;                     _LCD_SETUP_8BIT
;;                _LCD_INITIALIZE_8BIT
;;               _LCD_INSTRUCTION_8BIT
;;                        _LCD_DISPLAY
;; ---------------------------------------------------------------------------------
;; (1) _LCD_DISPLAY                                          5     5      0    1177
;;                                             32 BANK0      5     5      0
;;                             _strlen
;;                           _LCD_DATA
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INITIALIZE_8BIT                                  0     0      0     364
;;               _LCD_INSTRUCTION_8BIT
;; ---------------------------------------------------------------------------------
;; (1) _LCD_INSTRUCTION_8BIT                                25    25      0     364
;;                                              0 COMMON     5     5      0
;;                                              0 BANK0     20    20      0
;; ---------------------------------------------------------------------------------
;; (2) _LCD_DATA                                            39    37      2     975
;;                                              0 COMMON     7     5      2
;;                                              0 BANK0     32    32      0
;; ---------------------------------------------------------------------------------
;; (3) _strlen                                              10     8      2      89
;;                                              0 COMMON    10     8      2
;; ---------------------------------------------------------------------------------
;; (1) _LCD_SETUP_8BIT                                       0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _LCD_SETUP_8BIT
;;   _LCD_INITIALIZE_8BIT
;;     _LCD_INSTRUCTION_8BIT
;;   _LCD_INSTRUCTION_8BIT
;;   _LCD_DISPLAY
;;     _strlen
;;     _LCD_DATA
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     25      25       5       46.3%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  732[COMMON] int 
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
;;		_LCD_SETUP_8BIT
;;		_LCD_INITIALIZE_8BIT
;;		_LCD_INSTRUCTION_8BIT
;;		_LCD_DISPLAY
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\Main.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	14
	
l2887:	
;Main.c: 14: LCD_SETUP_8BIT();
	fcall	_LCD_SETUP_8BIT
	line	15
	
l2889:	
;Main.c: 15: LCD_INITIALIZE_8BIT();
	fcall	_LCD_INITIALIZE_8BIT
	goto	l2891
	line	16
;Main.c: 16: while(0x01){
	
l733:	
	line	17
	
l2891:	
;Main.c: 17: LCD_INSTRUCTION_8BIT(0x80);
	movlw	(080h)
	fcall	_LCD_INSTRUCTION_8BIT
	line	18
	
l2893:	
;Main.c: 18: LCD_DISPLAY("Nhlanhla");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCD_DISPLAY
	line	19
	
l2895:	
;Main.c: 19: _delay((unsigned long)((10)*(20000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_main+0)+0+1),f
	movlw	238
movwf	((??_main+0)+0),f
u3857:
	decfsz	((??_main+0)+0),f
	goto	u3857
	decfsz	((??_main+0)+0+1),f
	goto	u3857
	clrwdt
opt asmopt_on

	goto	l2891
	line	20
	
l734:	
	line	16
	goto	l2891
	
l735:	
	line	22
;Main.c: 20: }
;Main.c: 21: return 0;
;	Return value of _main is never used
	
l736:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_LCD_DISPLAY
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function _LCD_DISPLAY *****************
;; Defined at:
;;		line 181 in file "C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
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
psect	text184
	file	"C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
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
	
l2877:	
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
	
l2879:	
;LCD_SCREEN.h: 183: unsigned int x;
;LCD_SCREEN.h: 184: for(x = 0x00 ; x < length ; x-=-0x01){
	clrf	(LCD_DISPLAY@x)
	clrf	(LCD_DISPLAY@x+1)
	goto	l2885
	
l725:	
	line	185
	
l2881:	
;LCD_SCREEN.h: 185: LCD_DATA(string[x],0x08);
	movlw	low(08h)
	movwf	(?_LCD_DATA)
	movlw	high(08h)
	movwf	((?_LCD_DATA))+1
	movf	(LCD_DISPLAY@x),w
	addwf	(LCD_DISPLAY@string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCD_DATA
	line	184
	
l2883:	
	movlw	low(0FFFFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCD_DISPLAY@x),f
	movlw	high(0FFFFh)
	skipc
	decf	(LCD_DISPLAY@x+1),f
	subwf	(LCD_DISPLAY@x+1),f
	goto	l2885
	
l724:	
	
l2885:	
	movf	(LCD_DISPLAY@length+1),w
	subwf	(LCD_DISPLAY@x+1),w
	skipz
	goto	u3845
	movf	(LCD_DISPLAY@length),w
	subwf	(LCD_DISPLAY@x),w
u3845:
	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l2881
u3840:
	goto	l727
	
l726:	
	line	187
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DISPLAY
	__end_of_LCD_DISPLAY:
;; =============== function _LCD_DISPLAY ends ============

	signat	_LCD_DISPLAY,4216
	global	_LCD_INITIALIZE_8BIT
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function _LCD_INITIALIZE_8BIT *****************
;; Defined at:
;;		line 173 in file "C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
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
;;		_LCD_INSTRUCTION_8BIT
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text185
	file	"C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
	line	173
	global	__size_of_LCD_INITIALIZE_8BIT
	__size_of_LCD_INITIALIZE_8BIT	equ	__end_of_LCD_INITIALIZE_8BIT-_LCD_INITIALIZE_8BIT
	
_LCD_INITIALIZE_8BIT:	
	opt	stack 6
; Regs used in _LCD_INITIALIZE_8BIT: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	174
	
l2875:	
;LCD_SCREEN.h: 174: LCD_INSTRUCTION_8BIT(0x38);
	movlw	(038h)
	fcall	_LCD_INSTRUCTION_8BIT
	line	175
;LCD_SCREEN.h: 175: LCD_INSTRUCTION_8BIT(0x06);
	movlw	(06h)
	fcall	_LCD_INSTRUCTION_8BIT
	line	176
;LCD_SCREEN.h: 176: LCD_INSTRUCTION_8BIT(0x0c);
	movlw	(0Ch)
	fcall	_LCD_INSTRUCTION_8BIT
	line	177
;LCD_SCREEN.h: 177: LCD_INSTRUCTION_8BIT(0x01);
	movlw	(01h)
	fcall	_LCD_INSTRUCTION_8BIT
	line	179
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INITIALIZE_8BIT
	__end_of_LCD_INITIALIZE_8BIT:
;; =============== function _LCD_INITIALIZE_8BIT ends ============

	signat	_LCD_INITIALIZE_8BIT,88
	global	_LCD_INSTRUCTION_8BIT
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:

;; *************** function _LCD_INSTRUCTION_8BIT *****************
;; Defined at:
;;		line 143 in file "C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
;; Parameters:    Size  Location     Type
;;  instruction     1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  instruction     1   16[BANK0 ] unsigned char 
;;  v               2   18[BANK0 ] int 
;;  _8bit_         16    0[BANK0 ] int [8]
;;  data            1   17[BANK0 ] unsigned char 
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
;;      Locals:         0      20       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5      20       0       0       0
;;Total ram usage:       25 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCD_INITIALIZE_8BIT
;;		_main
;; This function uses a non-reentrant model
;;
psect	text186
	file	"C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
	line	143
	global	__size_of_LCD_INSTRUCTION_8BIT
	__size_of_LCD_INSTRUCTION_8BIT	equ	__end_of_LCD_INSTRUCTION_8BIT-_LCD_INSTRUCTION_8BIT
	
_LCD_INSTRUCTION_8BIT:	
	opt	stack 7
; Regs used in _LCD_INSTRUCTION_8BIT: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_INSTRUCTION_8BIT@instruction stored from wreg
	line	146
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_INSTRUCTION_8BIT@instruction)
	
l2857:	
;LCD_SCREEN.h: 144: unsigned char data;
;LCD_SCREEN.h: 145: int _8bit_[0x08];
;LCD_SCREEN.h: 146: data = instruction;
	movf	(LCD_INSTRUCTION_8BIT@instruction),w
	movwf	(??_LCD_INSTRUCTION_8BIT+0)+0
	movf	(??_LCD_INSTRUCTION_8BIT+0)+0,w
	movwf	(LCD_INSTRUCTION_8BIT@data)
	line	147
	
l2859:	
;LCD_SCREEN.h: 147: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_INSTRUCTION_8BIT@v)
	clrf	(LCD_INSTRUCTION_8BIT@v+1)
	
l2861:	
	movf	(LCD_INSTRUCTION_8BIT@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3645
	movlw	low(08h)
	subwf	(LCD_INSTRUCTION_8BIT@v),w
u3645:

	skipc
	goto	u3641
	goto	u3640
u3641:
	goto	l2865
u3640:
	goto	l714
	
l2863:	
	goto	l714
	
l713:	
	line	148
	
l2865:	
;LCD_SCREEN.h: 148: _8bit_[v] = (data &(0x01 << v))>>v;
	movlw	(01h)
	movwf	(??_LCD_INSTRUCTION_8BIT+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_INSTRUCTION_8BIT@v),w
	goto	u3654
u3655:
	clrc
	rlf	(??_LCD_INSTRUCTION_8BIT+0)+0,f
u3654:
	addlw	-1
	skipz
	goto	u3655
	movf	0+(??_LCD_INSTRUCTION_8BIT+0)+0,w
	andwf	(LCD_INSTRUCTION_8BIT@data),w
	movwf	(??_LCD_INSTRUCTION_8BIT+1)+0
	incf	(LCD_INSTRUCTION_8BIT@v),w
	goto	u3664
u3665:
	clrc
	rrf	(??_LCD_INSTRUCTION_8BIT+1)+0,f
u3664:
	addlw	-1
	skipz
	goto	u3665
	movf	0+(??_LCD_INSTRUCTION_8BIT+1)+0,w
	movwf	(??_LCD_INSTRUCTION_8BIT+2)+0
	clrf	(??_LCD_INSTRUCTION_8BIT+2)+0+1
	movf	(LCD_INSTRUCTION_8BIT@v),w
	movwf	(??_LCD_INSTRUCTION_8BIT+4)+0
	addwf	(??_LCD_INSTRUCTION_8BIT+4)+0,w
	addlw	LCD_INSTRUCTION_8BIT@_8bit_&0ffh
	movwf	fsr0
	movf	0+(??_LCD_INSTRUCTION_8BIT+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	incf	fsr0,f
	movf	1+(??_LCD_INSTRUCTION_8BIT+2)+0,w
	movwf	indf
	line	147
	
l2867:	
	movlw	low(01h)
	addwf	(LCD_INSTRUCTION_8BIT@v),f
	skipnc
	incf	(LCD_INSTRUCTION_8BIT@v+1),f
	movlw	high(01h)
	addwf	(LCD_INSTRUCTION_8BIT@v+1),f
	
l2869:	
	movf	(LCD_INSTRUCTION_8BIT@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3675
	movlw	low(08h)
	subwf	(LCD_INSTRUCTION_8BIT@v),w
u3675:

	skipc
	goto	u3671
	goto	u3670
u3671:
	goto	l2865
u3670:
	
l714:	
	line	150
;LCD_SCREEN.h: 149: }
;LCD_SCREEN.h: 150: RB4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_INSTRUCTION_8BIT@_8bit_),0
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
	line	151
;LCD_SCREEN.h: 151: RB5 = _8bit_[0x01];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+02h,0
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
	line	152
;LCD_SCREEN.h: 152: RB6 = _8bit_[0x02];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+04h,0
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
	line	153
;LCD_SCREEN.h: 153: RB7 = _8bit_[0x03];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+06h,0
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
	line	154
;LCD_SCREEN.h: 154: RC0 = _8bit_[0x04];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+08h,0
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
	line	155
;LCD_SCREEN.h: 155: RC1 = _8bit_[0x05];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+0Ah,0
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
	line	156
;LCD_SCREEN.h: 156: RC2 = _8bit_[0x06];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+0Ch,0
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
	line	157
;LCD_SCREEN.h: 157: RC3 = _8bit_[0x07];
	btfsc	0+(LCD_INSTRUCTION_8BIT@_8bit_)+0Eh,0
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
	line	158
;LCD_SCREEN.h: 158: RB1 = 0x00;
	bcf	(49/8),(49)&7
	line	159
;LCD_SCREEN.h: 159: RB2 = 0x00;
	bcf	(50/8),(50)&7
	line	160
;LCD_SCREEN.h: 160: RB3 = 0x01;
	bsf	(51/8),(51)&7
	line	161
	
l2871:	
;LCD_SCREEN.h: 161: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_LCD_INSTRUCTION_8BIT+0)+0+1),f
	movlw	118
movwf	((??_LCD_INSTRUCTION_8BIT+0)+0),f
u3867:
	decfsz	((??_LCD_INSTRUCTION_8BIT+0)+0),f
	goto	u3867
	decfsz	((??_LCD_INSTRUCTION_8BIT+0)+0+1),f
	goto	u3867
	clrwdt
opt asmopt_on

	line	162
	
l2873:	
;LCD_SCREEN.h: 162: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	163
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_INSTRUCTION_8BIT
	__end_of_LCD_INSTRUCTION_8BIT:
;; =============== function _LCD_INSTRUCTION_8BIT ends ============

	signat	_LCD_INSTRUCTION_8BIT,4216
	global	_LCD_DATA
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:

;; *************** function _LCD_DATA *****************
;; Defined at:
;;		line 55 in file "C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
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
;;		_LCD_DISPLAY_DIGIT
;; This function uses a non-reentrant model
;;
psect	text187
	file	"C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
	line	55
	global	__size_of_LCD_DATA
	__size_of_LCD_DATA	equ	__end_of_LCD_DATA-_LCD_DATA
	
_LCD_DATA:	
	opt	stack 6
; Regs used in _LCD_DATA: [wreg-fsr0h+status,2+status,0+btemp+1]
;LCD_DATA@data stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCD_DATA@data)
	line	56
	
l2803:	
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
	goto	u3171
	goto	u3170
u3171:
	goto	l695
u3170:
	line	60
	
l2805:	
;LCD_SCREEN.h: 60: _data = _data>>0x04;
	movf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+0)+0
	movlw	04h
u3185:
	clrc
	rrf	(??_LCD_DATA+0)+0,f
	addlw	-1
	skipz
	goto	u3185
	movf	0+(??_LCD_DATA+0)+0,w
	movwf	(??_LCD_DATA+1)+0
	movf	(??_LCD_DATA+1)+0,w
	movwf	(LCD_DATA@_data)
	line	61
	
l2807:	
;LCD_SCREEN.h: 61: for(int x =0x00; x < 0x04; x-=-0x01){
	clrf	(LCD_DATA@x)
	clrf	(LCD_DATA@x+1)
	
l2809:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3195
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3195:

	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l2813
u3190:
	goto	l697
	
l2811:	
	goto	l697
	
l696:	
	line	62
	
l2813:	
;LCD_SCREEN.h: 62: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x),w
	goto	u3204
u3205:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3204:
	addlw	-1
	skipz
	goto	u3205
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x),w
	goto	u3214
u3215:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3214:
	addlw	-1
	skipz
	goto	u3215
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
	
l2815:	
	movlw	low(01h)
	addwf	(LCD_DATA@x),f
	skipnc
	incf	(LCD_DATA@x+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x+1),f
	
l2817:	
	movf	(LCD_DATA@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3225
	movlw	low(04h)
	subwf	(LCD_DATA@x),w
u3225:

	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l2813
u3220:
	
l697:	
	line	64
;LCD_SCREEN.h: 63: }
;LCD_SCREEN.h: 64: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3231
	goto	u3230
	
u3231:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3244
u3230:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3244:
	line	65
;LCD_SCREEN.h: 65: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3251
	goto	u3250
	
u3251:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3264
u3250:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3264:
	line	66
;LCD_SCREEN.h: 66: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3271
	goto	u3270
	
u3271:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3284
u3270:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3284:
	line	67
;LCD_SCREEN.h: 67: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3291
	goto	u3290
	
u3291:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3304
u3290:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3304:
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
	
l2819:	
;LCD_SCREEN.h: 71: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u3877:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u3877
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u3877
	nop2
opt asmopt_on

	line	72
	
l2821:	
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
	
l2823:	
;LCD_SCREEN.h: 75: for(int x = 0x00; x< 0x04; x-=-0x01){
	clrf	(LCD_DATA@x_1245)
	clrf	(LCD_DATA@x_1245+1)
	
l2825:	
	movf	(LCD_DATA@x_1245+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3315
	movlw	low(04h)
	subwf	(LCD_DATA@x_1245),w
u3315:

	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l2829
u3310:
	goto	l699
	
l2827:	
	goto	l699
	
l698:	
	line	76
	
l2829:	
;LCD_SCREEN.h: 76: _4bit_[x] = (_data & (0x01<<x))>>x;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@x_1245),w
	goto	u3324
u3325:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3324:
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@x_1245),w
	goto	u3334
u3335:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3334:
	addlw	-1
	skipz
	goto	u3335
	movf	0+(??_LCD_DATA+1)+0,w
	movwf	(??_LCD_DATA+2)+0
	clrf	(??_LCD_DATA+2)+0+1
	movf	(LCD_DATA@x_1245),w
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
	
l2831:	
	movlw	low(01h)
	addwf	(LCD_DATA@x_1245),f
	skipnc
	incf	(LCD_DATA@x_1245+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@x_1245+1),f
	
l2833:	
	movf	(LCD_DATA@x_1245+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3345
	movlw	low(04h)
	subwf	(LCD_DATA@x_1245),w
u3345:

	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l2829
u3340:
	
l699:	
	line	78
;LCD_SCREEN.h: 77: }
;LCD_SCREEN.h: 78: RC0 = _4bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_4bit_),0
	goto	u3351
	goto	u3350
	
u3351:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3364
u3350:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3364:
	line	79
;LCD_SCREEN.h: 79: RC1 = _4bit_[0x01];
	btfsc	0+(LCD_DATA@_4bit_)+02h,0
	goto	u3371
	goto	u3370
	
u3371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3384
u3370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3384:
	line	80
;LCD_SCREEN.h: 80: RC2 = _4bit_[0x02];
	btfsc	0+(LCD_DATA@_4bit_)+04h,0
	goto	u3391
	goto	u3390
	
u3391:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3404
u3390:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3404:
	line	81
;LCD_SCREEN.h: 81: RC3 = _4bit_[0x03];
	btfsc	0+(LCD_DATA@_4bit_)+06h,0
	goto	u3411
	goto	u3410
	
u3411:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3424
u3410:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3424:
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
	
l2835:	
;LCD_SCREEN.h: 85: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	251
movwf	((??_LCD_DATA+0)+0),f
u3887:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u3887
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u3887
	nop2
opt asmopt_on

	line	86
	
l2837:	
;LCD_SCREEN.h: 86: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	88
	
l695:	
	line	89
;LCD_SCREEN.h: 88: }
;LCD_SCREEN.h: 89: if(mode == 0x08){
	movlw	08h
	xorwf	(LCD_DATA@mode),w
	iorwf	(LCD_DATA@mode+1),w
	skipz
	goto	u3431
	goto	u3430
u3431:
	goto	l703
u3430:
	line	90
	
l2839:	
;LCD_SCREEN.h: 90: _data = data;
	movf	(LCD_DATA@data),w
	movwf	(??_LCD_DATA+0)+0
	movf	(??_LCD_DATA+0)+0,w
	movwf	(LCD_DATA@_data)
	line	91
	
l2841:	
;LCD_SCREEN.h: 91: for(int v = 0x00 ; v < 0x08 ; v -=-0x01){
	clrf	(LCD_DATA@v)
	clrf	(LCD_DATA@v+1)
	
l2843:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3445
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3445:

	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l2847
u3440:
	goto	l702
	
l2845:	
	goto	l702
	
l701:	
	line	92
	
l2847:	
;LCD_SCREEN.h: 92: _8bit_[v] = (_data &(0x01 << v))>>v;
	movlw	(01h)
	movwf	(??_LCD_DATA+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	incf	(LCD_DATA@v),w
	goto	u3454
u3455:
	clrc
	rlf	(??_LCD_DATA+0)+0,f
u3454:
	addlw	-1
	skipz
	goto	u3455
	movf	0+(??_LCD_DATA+0)+0,w
	andwf	(LCD_DATA@_data),w
	movwf	(??_LCD_DATA+1)+0
	incf	(LCD_DATA@v),w
	goto	u3464
u3465:
	clrc
	rrf	(??_LCD_DATA+1)+0,f
u3464:
	addlw	-1
	skipz
	goto	u3465
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
	
l2849:	
	movlw	low(01h)
	addwf	(LCD_DATA@v),f
	skipnc
	incf	(LCD_DATA@v+1),f
	movlw	high(01h)
	addwf	(LCD_DATA@v+1),f
	
l2851:	
	movf	(LCD_DATA@v+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3475
	movlw	low(08h)
	subwf	(LCD_DATA@v),w
u3475:

	skipc
	goto	u3471
	goto	u3470
u3471:
	goto	l2847
u3470:
	
l702:	
	line	94
;LCD_SCREEN.h: 93: }
;LCD_SCREEN.h: 94: RB4 = _8bit_[0x00];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(LCD_DATA@_8bit_),0
	goto	u3481
	goto	u3480
	
u3481:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(52/8),(52)&7
	goto	u3494
u3480:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(52/8),(52)&7
u3494:
	line	95
;LCD_SCREEN.h: 95: RB5 = _8bit_[0x01];
	btfsc	0+(LCD_DATA@_8bit_)+02h,0
	goto	u3501
	goto	u3500
	
u3501:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(53/8),(53)&7
	goto	u3514
u3500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(53/8),(53)&7
u3514:
	line	96
;LCD_SCREEN.h: 96: RB6 = _8bit_[0x02];
	btfsc	0+(LCD_DATA@_8bit_)+04h,0
	goto	u3521
	goto	u3520
	
u3521:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	goto	u3534
u3520:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
u3534:
	line	97
;LCD_SCREEN.h: 97: RB7 = _8bit_[0x03];
	btfsc	0+(LCD_DATA@_8bit_)+06h,0
	goto	u3541
	goto	u3540
	
u3541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	goto	u3554
u3540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
u3554:
	line	98
;LCD_SCREEN.h: 98: RC0 = _8bit_[0x04];
	btfsc	0+(LCD_DATA@_8bit_)+08h,0
	goto	u3561
	goto	u3560
	
u3561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u3574
u3560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u3574:
	line	99
;LCD_SCREEN.h: 99: RC1 = _8bit_[0x05];
	btfsc	0+(LCD_DATA@_8bit_)+0Ah,0
	goto	u3581
	goto	u3580
	
u3581:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u3594
u3580:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u3594:
	line	100
;LCD_SCREEN.h: 100: RC2 = _8bit_[0x06];
	btfsc	0+(LCD_DATA@_8bit_)+0Ch,0
	goto	u3601
	goto	u3600
	
u3601:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7
	goto	u3614
u3600:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7
u3614:
	line	101
;LCD_SCREEN.h: 101: RC3 = _8bit_[0x07];
	btfsc	0+(LCD_DATA@_8bit_)+0Eh,0
	goto	u3621
	goto	u3620
	
u3621:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	goto	u3634
u3620:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(59/8),(59)&7
u3634:
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
	
l2853:	
;LCD_SCREEN.h: 105: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_LCD_DATA+0)+0+1),f
	movlw	118
movwf	((??_LCD_DATA+0)+0),f
u3897:
	decfsz	((??_LCD_DATA+0)+0),f
	goto	u3897
	decfsz	((??_LCD_DATA+0)+0+1),f
	goto	u3897
	clrwdt
opt asmopt_on

	line	106
	
l2855:	
;LCD_SCREEN.h: 106: RB3 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	goto	l703
	line	107
	
l700:	
	line	108
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_DATA
	__end_of_LCD_DATA:
;; =============== function _LCD_DATA ends ============

	signat	_LCD_DATA,8312
	global	_strlen
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:

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
psect	text188
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
	
l2793:	
	movf	(strlen@s),w
	movwf	(??_strlen+0)+0
	movf	(??_strlen+0)+0,w
	movwf	(strlen@cp)
	line	9
	goto	l2795
	
l1414:	
	line	10
	goto	l2795
	
l1413:	
	line	9
	
l2795:	
	movlw	01h
	addwf	(strlen@cp),f
	movlw	-01h
	addwf	(strlen@cp),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l2795
u3160:
	goto	l2797
	
l1415:	
	line	11
	
l2797:	
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
	goto	l1416
	
l2799:	
	line	12
	
l1416:	
	return
	opt stack 0
GLOBAL	__end_of_strlen
	__end_of_strlen:
;; =============== function _strlen ends ============

	signat	_strlen,4218
	global	_LCD_SETUP_8BIT
psect	text189,local,class=CODE,delta=2
global __ptext189
__ptext189:

;; *************** function _LCD_SETUP_8BIT *****************
;; Defined at:
;;		line 38 in file "C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
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
psect	text189
	file	"C:\Users\www\Desktop\PIC16F877A\LCD_SCREEN\LCD_SCREEN.h"
	line	38
	global	__size_of_LCD_SETUP_8BIT
	__size_of_LCD_SETUP_8BIT	equ	__end_of_LCD_SETUP_8BIT-_LCD_SETUP_8BIT
	
_LCD_SETUP_8BIT:	
	opt	stack 7
; Regs used in _LCD_SETUP_8BIT: []
	line	40
	
l1791:	
;LCD_SCREEN.h: 40: TRISB1 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1073/8)^080h,(1073)&7
	line	41
;LCD_SCREEN.h: 41: TRISB2 = 0x00;
	bcf	(1074/8)^080h,(1074)&7
	line	42
;LCD_SCREEN.h: 42: TRISB3 = 0x00;
	bcf	(1075/8)^080h,(1075)&7
	line	44
;LCD_SCREEN.h: 44: TRISB4 = 0x00;
	bcf	(1076/8)^080h,(1076)&7
	line	45
;LCD_SCREEN.h: 45: TRISB5 = 0x00;
	bcf	(1077/8)^080h,(1077)&7
	line	46
;LCD_SCREEN.h: 46: TRISB6 = 0x00;
	bcf	(1078/8)^080h,(1078)&7
	line	47
;LCD_SCREEN.h: 47: TRISB7 = 0x00;
	bcf	(1079/8)^080h,(1079)&7
	line	48
;LCD_SCREEN.h: 48: TRISC0 = 0x00;
	bcf	(1080/8)^080h,(1080)&7
	line	49
;LCD_SCREEN.h: 49: TRISC1 = 0x00;
	bcf	(1081/8)^080h,(1081)&7
	line	50
;LCD_SCREEN.h: 50: TRISC2 = 0x00;
	bcf	(1082/8)^080h,(1082)&7
	line	51
;LCD_SCREEN.h: 51: TRISC3 = 0x00;
	bcf	(1083/8)^080h,(1083)&7
	line	52
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_LCD_SETUP_8BIT
	__end_of_LCD_SETUP_8BIT:
;; =============== function _LCD_SETUP_8BIT ends ============

	signat	_LCD_SETUP_8BIT,88
psect	text190,local,class=CODE,delta=2
global __ptext190
__ptext190:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
