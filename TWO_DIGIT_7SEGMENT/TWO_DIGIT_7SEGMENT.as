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
	FNCALL	_main,_Seg_Init
	FNCALL	_main,_Seg7_Multiplex
	FNCALL	_Seg7_Multiplex,_Seg_Display
	FNROOT	_main
	global	_PORTC
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISC
_TRISC	set	135
	global	_TRISD0
_TRISD0	set	1088
	global	_TRISD1
_TRISD1	set	1089
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
	file	"TWO_DIGIT_7SEGMENT.as"
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
	global	?_Seg_Init
?_Seg_Init:	; 0 bytes @ 0x0
	global	??_Seg_Init
??_Seg_Init:	; 0 bytes @ 0x0
	global	?_Seg_Display
?_Seg_Display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	Seg_Display@num
Seg_Display@num:	; 2 bytes @ 0x0
	ds	2
	global	Seg_Display@type
Seg_Display@type:	; 1 bytes @ 0x2
	ds	1
	global	?_Seg7_Multiplex
?_Seg7_Multiplex:	; 0 bytes @ 0x3
	global	??_Seg_Display
??_Seg_Display:	; 0 bytes @ 0x3
	global	Seg7_Multiplex@num1
Seg7_Multiplex@num1:	; 2 bytes @ 0x3
	ds	2
	global	Seg7_Multiplex@num2
Seg7_Multiplex@num2:	; 2 bytes @ 0x5
	ds	2
	global	??_Seg7_Multiplex
??_Seg7_Multiplex:	; 0 bytes @ 0x7
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@num1
main@num1:	; 2 bytes @ 0x0
	ds	2
	global	main@num2
main@num2:	; 2 bytes @ 0x2
	ds	2
	global	main@counter
main@counter:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      6       6
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Seg7_Multiplex
;;   _Seg7_Multiplex->_Seg_Display
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 9     9      0     272
;;                                             10 COMMON     3     3      0
;;                                              0 BANK0      6     6      0
;;                           _Seg_Init
;;                     _Seg7_Multiplex
;; ---------------------------------------------------------------------------------
;; (1) _Seg7_Multiplex                                       7     3      4     132
;;                                              3 COMMON     7     3      4
;;                        _Seg_Display
;; ---------------------------------------------------------------------------------
;; (2) _Seg_Display                                          3     0      3      88
;;                                              0 COMMON     3     0      3
;; ---------------------------------------------------------------------------------
;; (1) _Seg_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Seg_Init
;;   _Seg7_Multiplex
;;     _Seg_Display
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
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      6       6       5        7.5%
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
;;		line 9 in file "C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  counter         2    4[BANK0 ] unsigned int 
;;  num2            2    2[BANK0 ] unsigned int 
;;  num1            2    0[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2  734[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       6       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Seg_Init
;;		_Seg7_Multiplex
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Main.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	10
	
l2921:	
;Main.c: 10: Seg_Init();
	fcall	_Seg_Init
	line	11
	
l2923:	
;Main.c: 11: TRISD0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1088/8)^080h,(1088)&7
	line	12
	
l2925:	
;Main.c: 12: TRISD1 = 0x00;
	bcf	(1089/8)^080h,(1089)&7
	line	13
	
l2927:	
;Main.c: 13: unsigned int num1 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@num1)
	clrf	(main@num1+1)
	line	14
	
l2929:	
;Main.c: 14: unsigned int num2 = 0x00;
	clrf	(main@num2)
	clrf	(main@num2+1)
	line	15
	
l2931:	
;Main.c: 15: unsigned int counter = 0x00;
	clrf	(main@counter)
	clrf	(main@counter+1)
	goto	l2933
	line	16
;Main.c: 16: while(0x01){
	
l735:	
	line	18
	
l2933:	
;Main.c: 18: if(num2 > 9){
	movlw	high(0Ah)
	subwf	(main@num2+1),w
	movlw	low(0Ah)
	skipnz
	subwf	(main@num2),w
	skipc
	goto	u2271
	goto	u2270
u2271:
	goto	l736
u2270:
	line	19
	
l2935:	
;Main.c: 19: num1 = num1+0x01;
	movf	(main@num1),w
	addlw	low(01h)
	movwf	(main@num1)
	movf	(main@num1+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@num1)
	line	20
	
l2937:	
;Main.c: 20: num2 = 0x00;
	clrf	(main@num2)
	clrf	(main@num2+1)
	line	21
	
l2939:	
;Main.c: 21: counter = 0x00;
	clrf	(main@counter)
	clrf	(main@counter+1)
	line	22
	
l736:	
	line	23
;Main.c: 22: }
;Main.c: 23: num2 = counter;
	movf	(main@counter+1),w
	clrf	(main@num2+1)
	addwf	(main@num2+1)
	movf	(main@counter),w
	clrf	(main@num2)
	addwf	(main@num2)

	line	24
	
l2941:	
;Main.c: 24: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	94
movwf	((??_main+0)+0+1),f
	movlw	134
movwf	((??_main+0)+0),f
u2287:
	decfsz	((??_main+0)+0),f
	goto	u2287
	decfsz	((??_main+0)+0+1),f
	goto	u2287
	decfsz	((??_main+0)+0+2),f
	goto	u2287
	clrwdt
opt asmopt_on

	line	25
	
l2943:	
;Main.c: 25: Seg7_Multiplex(num1,num2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@num1+1),w
	clrf	(?_Seg7_Multiplex+1)
	addwf	(?_Seg7_Multiplex+1)
	movf	(main@num1),w
	clrf	(?_Seg7_Multiplex)
	addwf	(?_Seg7_Multiplex)

	movf	(main@num2+1),w
	clrf	1+(?_Seg7_Multiplex)+02h
	addwf	1+(?_Seg7_Multiplex)+02h
	movf	(main@num2),w
	clrf	0+(?_Seg7_Multiplex)+02h
	addwf	0+(?_Seg7_Multiplex)+02h

	fcall	_Seg7_Multiplex
	line	26
	
l2945:	
;Main.c: 26: counter = counter+0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@counter),w
	addlw	low(01h)
	movwf	(main@counter)
	movf	(main@counter+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@counter)
	goto	l2933
	line	27
	
l737:	
	line	16
	goto	l2933
	
l738:	
	line	29
;Main.c: 27: }
;Main.c: 28: return 0;
;	Return value of _main is never used
	
l739:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Seg7_Multiplex
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:

;; *************** function _Seg7_Multiplex *****************
;; Defined at:
;;		line 31 in file "C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Main.c"
;; Parameters:    Size  Location     Type
;;  num1            2    3[COMMON] unsigned int 
;;  num2            2    5[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Seg_Display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text149
	file	"C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Main.c"
	line	31
	global	__size_of_Seg7_Multiplex
	__size_of_Seg7_Multiplex	equ	__end_of_Seg7_Multiplex-_Seg7_Multiplex
	
_Seg7_Multiplex:	
	opt	stack 6
; Regs used in _Seg7_Multiplex: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	32
	
l2907:	
;Main.c: 32: Seg_Display(num1,'C');
	movf	(Seg7_Multiplex@num1+1),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(Seg7_Multiplex@num1),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	movlw	(043h)
	movwf	(??_Seg7_Multiplex+0)+0
	movf	(??_Seg7_Multiplex+0)+0,w
	movwf	0+(?_Seg_Display)+02h
	fcall	_Seg_Display
	line	33
	
l2909:	
;Main.c: 33: RD0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	34
	
l2911:	
;Main.c: 34: RD1 = 0x01;
	bsf	(65/8),(65)&7
	line	35
	
l2913:	
;Main.c: 35: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_Seg7_Multiplex+0)+0+2),f
movlw	134
movwf	((??_Seg7_Multiplex+0)+0+1),f
	movlw	153
movwf	((??_Seg7_Multiplex+0)+0),f
u2297:
	decfsz	((??_Seg7_Multiplex+0)+0),f
	goto	u2297
	decfsz	((??_Seg7_Multiplex+0)+0+1),f
	goto	u2297
	decfsz	((??_Seg7_Multiplex+0)+0+2),f
	goto	u2297
opt asmopt_on

	line	36
	
l2915:	
;Main.c: 36: Seg_Display(num2,'C');
	movf	(Seg7_Multiplex@num2+1),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(Seg7_Multiplex@num2),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	movlw	(043h)
	movwf	(??_Seg7_Multiplex+0)+0
	movf	(??_Seg7_Multiplex+0)+0,w
	movwf	0+(?_Seg_Display)+02h
	fcall	_Seg_Display
	line	37
	
l2917:	
;Main.c: 37: RD0 = 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	38
	
l2919:	
;Main.c: 38: RD1 = 0x00;
	bcf	(65/8),(65)&7
	line	39
;Main.c: 39: _delay((unsigned long)((60)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_Seg7_Multiplex+0)+0+2),f
movlw	134
movwf	((??_Seg7_Multiplex+0)+0+1),f
	movlw	153
movwf	((??_Seg7_Multiplex+0)+0),f
u2307:
	decfsz	((??_Seg7_Multiplex+0)+0),f
	goto	u2307
	decfsz	((??_Seg7_Multiplex+0)+0+1),f
	goto	u2307
	decfsz	((??_Seg7_Multiplex+0)+0+2),f
	goto	u2307
opt asmopt_on

	line	40
	
l742:	
	return
	opt stack 0
GLOBAL	__end_of_Seg7_Multiplex
	__end_of_Seg7_Multiplex:
;; =============== function _Seg7_Multiplex ends ============

	signat	_Seg7_Multiplex,8312
	global	_Seg_Display
psect	text150,local,class=CODE,delta=2
global __ptext150
__ptext150:

;; *************** function _Seg_Display *****************
;; Defined at:
;;		line 18 in file "C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Seg7_lib.h"
;; Parameters:    Size  Location     Type
;;  num             2    0[COMMON] int 
;;  type            1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Seg7_Multiplex
;; This function uses a non-reentrant model
;;
psect	text150
	file	"C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Seg7_lib.h"
	line	18
	global	__size_of_Seg_Display
	__size_of_Seg_Display	equ	__end_of_Seg_Display-_Seg_Display
	
_Seg_Display:	
	opt	stack 6
; Regs used in _Seg_Display: [wreg-fsr0h+status,2+status,0]
	line	19
	
l2819:	
;Seg7_lib.h: 19: if(type == 'C'){
	movf	(Seg_Display@type),w
	xorlw	043h
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2859
u2250:
	goto	l2857
	line	20
	
l2821:	
;Seg7_lib.h: 20: switch(num){
	goto	l2857
	line	22
;Seg7_lib.h: 22: case 0x00:
	
l694:	
	line	23
	
l2823:	
;Seg7_lib.h: 23: PORTC = 0b10111111;
	movlw	(0BFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	24
;Seg7_lib.h: 24: break;
	goto	l2859
	line	26
;Seg7_lib.h: 26: case 0x01:
	
l696:	
	line	27
	
l2825:	
;Seg7_lib.h: 27: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
;Seg7_lib.h: 28: break;
	goto	l2859
	line	30
;Seg7_lib.h: 30: case 0x02:
	
l697:	
	line	31
	
l2827:	
;Seg7_lib.h: 31: PORTC = 0b01011011;
	movlw	(05Bh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
;Seg7_lib.h: 32: break;
	goto	l2859
	line	34
;Seg7_lib.h: 34: case 0x03:
	
l698:	
	line	35
	
l2829:	
;Seg7_lib.h: 35: PORTC = 0b01001111;
	movlw	(04Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
;Seg7_lib.h: 36: break;
	goto	l2859
	line	38
;Seg7_lib.h: 38: case 0x04:
	
l699:	
	line	39
	
l2831:	
;Seg7_lib.h: 39: PORTC = 0b01100110;
	movlw	(066h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
;Seg7_lib.h: 40: break;
	goto	l2859
	line	42
;Seg7_lib.h: 42: case 0x05:
	
l700:	
	line	43
	
l2833:	
;Seg7_lib.h: 43: PORTC = 0b01101101;
	movlw	(06Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
;Seg7_lib.h: 44: break;
	goto	l2859
	line	46
;Seg7_lib.h: 46: case 0x06:
	
l701:	
	line	47
	
l2835:	
;Seg7_lib.h: 47: PORTC = 0b01111101;
	movlw	(07Dh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	48
;Seg7_lib.h: 48: break;
	goto	l2859
	line	50
;Seg7_lib.h: 50: case 0x07:
	
l702:	
	line	51
	
l2837:	
;Seg7_lib.h: 51: PORTC = 0b00000111;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	52
;Seg7_lib.h: 52: break;
	goto	l2859
	line	54
;Seg7_lib.h: 54: case 0x08:
	
l703:	
	line	55
	
l2839:	
;Seg7_lib.h: 55: PORTC = 0b01111111;
	movlw	(07Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	56
;Seg7_lib.h: 56: break;
	goto	l2859
	line	58
;Seg7_lib.h: 58: case 0x09:
	
l704:	
	line	59
	
l2841:	
;Seg7_lib.h: 59: PORTC = 0b01101111;
	movlw	(06Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	60
;Seg7_lib.h: 60: break;
	goto	l2859
	line	62
;Seg7_lib.h: 62: case 0x0A:
	
l705:	
	line	63
	
l2843:	
;Seg7_lib.h: 63: PORTC = 0b01110111;
	movlw	(077h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	64
;Seg7_lib.h: 64: break;
	goto	l2859
	line	66
;Seg7_lib.h: 66: case 0x0B:
	
l706:	
	line	67
	
l2845:	
;Seg7_lib.h: 67: PORTC = 0b01111100;
	movlw	(07Ch)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
;Seg7_lib.h: 68: break;
	goto	l2859
	line	70
;Seg7_lib.h: 70: case 0x0C:
	
l707:	
	line	71
	
l2847:	
;Seg7_lib.h: 71: PORTC = 0b00111001;
	movlw	(039h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	72
;Seg7_lib.h: 72: break;
	goto	l2859
	line	74
;Seg7_lib.h: 74: case 0x0D:
	
l708:	
	line	75
	
l2849:	
;Seg7_lib.h: 75: PORTC = 0b01011110;
	movlw	(05Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	76
;Seg7_lib.h: 76: break;
	goto	l2859
	line	78
;Seg7_lib.h: 78: case 0x0E:
	
l709:	
	line	79
	
l2851:	
;Seg7_lib.h: 79: PORTC = 0b01111001;
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
;Seg7_lib.h: 80: break;
	goto	l2859
	line	82
;Seg7_lib.h: 82: case 0x0F:
	
l710:	
	line	83
	
l2853:	
;Seg7_lib.h: 83: PORTC = 0b01110001;
	movlw	(071h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	84
;Seg7_lib.h: 84: break;
	goto	l2859
	line	86
;Seg7_lib.h: 86: default:
	
l711:	
	line	87
;Seg7_lib.h: 87: break;
	goto	l2859
	line	88
	
l2855:	
;Seg7_lib.h: 88: }
	goto	l2859
	line	20
	
l693:	
	
l2857:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (Seg_Display@num+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2987
	goto	l2859
	opt asmopt_on
	
l2987:	
; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           56     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable            20     6 (fixed)
; spacedrange           38     9 (fixed)
; locatedrange          16     3 (fixed)
;	Chosen strategy is simple_byte

	movf (Seg_Display@num),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2823
	xorlw	1^0	; case 1
	skipnz
	goto	l2825
	xorlw	2^1	; case 2
	skipnz
	goto	l2827
	xorlw	3^2	; case 3
	skipnz
	goto	l2829
	xorlw	4^3	; case 4
	skipnz
	goto	l2831
	xorlw	5^4	; case 5
	skipnz
	goto	l2833
	xorlw	6^5	; case 6
	skipnz
	goto	l2835
	xorlw	7^6	; case 7
	skipnz
	goto	l2837
	xorlw	8^7	; case 8
	skipnz
	goto	l2839
	xorlw	9^8	; case 9
	skipnz
	goto	l2841
	xorlw	10^9	; case 10
	skipnz
	goto	l2843
	xorlw	11^10	; case 11
	skipnz
	goto	l2845
	xorlw	12^11	; case 12
	skipnz
	goto	l2847
	xorlw	13^12	; case 13
	skipnz
	goto	l2849
	xorlw	14^13	; case 14
	skipnz
	goto	l2851
	xorlw	15^14	; case 15
	skipnz
	goto	l2853
	goto	l2859
	opt asmopt_on

	line	88
	
l695:	
	goto	l2859
	line	89
	
l692:	
	line	90
	
l2859:	
;Seg7_lib.h: 89: }
;Seg7_lib.h: 90: if(type == 'A'){
	movf	(Seg_Display@type),w
	xorlw	041h
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l732
u2260:
	goto	l2897
	line	91
	
l2861:	
;Seg7_lib.h: 91: switch(num){
	goto	l2897
	line	93
;Seg7_lib.h: 93: case 0x00:
	
l714:	
	line	94
	
l2863:	
;Seg7_lib.h: 94: PORTC = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	95
;Seg7_lib.h: 95: break;
	goto	l732
	line	97
;Seg7_lib.h: 97: case 0x01:
	
l716:	
	line	98
	
l2865:	
;Seg7_lib.h: 98: PORTC = 0b01111001;
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	99
;Seg7_lib.h: 99: break;
	goto	l732
	line	101
;Seg7_lib.h: 101: case 0x02:
	
l717:	
	line	102
	
l2867:	
;Seg7_lib.h: 102: PORTC = 0b00100100;
	movlw	(024h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	103
;Seg7_lib.h: 103: break;
	goto	l732
	line	105
;Seg7_lib.h: 105: case 0x03:
	
l718:	
	line	106
	
l2869:	
;Seg7_lib.h: 106: PORTC = 0b00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	107
;Seg7_lib.h: 107: break;
	goto	l732
	line	109
;Seg7_lib.h: 109: case 0x04:
	
l719:	
	line	110
	
l2871:	
;Seg7_lib.h: 110: PORTC = 0b00011001;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	111
;Seg7_lib.h: 111: break;
	goto	l732
	line	113
;Seg7_lib.h: 113: case 0x05:
	
l720:	
	line	114
	
l2873:	
;Seg7_lib.h: 114: PORTC = 0b00010010;
	movlw	(012h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	115
;Seg7_lib.h: 115: break;
	goto	l732
	line	117
;Seg7_lib.h: 117: case 0x06:
	
l721:	
	line	118
	
l2875:	
;Seg7_lib.h: 118: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	119
;Seg7_lib.h: 119: break;
	goto	l732
	line	121
;Seg7_lib.h: 121: case 0x07:
	
l722:	
	line	122
	
l2877:	
;Seg7_lib.h: 122: PORTC = 0b01111000;
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	123
;Seg7_lib.h: 123: break;
	goto	l732
	line	125
;Seg7_lib.h: 125: case 0x08:
	
l723:	
	line	126
	
l2879:	
;Seg7_lib.h: 126: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	127
;Seg7_lib.h: 127: break;
	goto	l732
	line	129
;Seg7_lib.h: 129: case 0x09:
	
l724:	
	line	130
	
l2881:	
;Seg7_lib.h: 130: PORTC = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	131
;Seg7_lib.h: 131: break;
	goto	l732
	line	133
;Seg7_lib.h: 133: case 0x0A:
	
l725:	
	line	134
	
l2883:	
;Seg7_lib.h: 134: PORTC = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	135
;Seg7_lib.h: 135: break;
	goto	l732
	line	137
;Seg7_lib.h: 137: case 0x0B:
	
l726:	
	line	138
	
l2885:	
;Seg7_lib.h: 138: PORTC = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	139
;Seg7_lib.h: 139: break;
	goto	l732
	line	141
;Seg7_lib.h: 141: case 0x0C:
	
l727:	
	line	142
	
l2887:	
;Seg7_lib.h: 142: PORTC = 0b01000110;
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	143
;Seg7_lib.h: 143: break;
	goto	l732
	line	145
;Seg7_lib.h: 145: case 0x0D:
	
l728:	
	line	146
	
l2889:	
;Seg7_lib.h: 146: PORTC = 0b00100001;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	147
;Seg7_lib.h: 147: break;
	goto	l732
	line	149
;Seg7_lib.h: 149: case 0x0E:
	
l729:	
	line	150
	
l2891:	
;Seg7_lib.h: 150: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	151
;Seg7_lib.h: 151: break;
	goto	l732
	line	153
;Seg7_lib.h: 153: case 0x0F:
	
l730:	
	line	154
	
l2893:	
;Seg7_lib.h: 154: PORTC = 0b00001110;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	155
;Seg7_lib.h: 155: break;
	goto	l732
	line	157
;Seg7_lib.h: 157: default:
	
l731:	
	line	158
;Seg7_lib.h: 158: break;
	goto	l732
	line	159
	
l2895:	
;Seg7_lib.h: 159: }
	goto	l732
	line	91
	
l713:	
	
l2897:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte           11     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     6 (fixed)
; spacedrange            8     9 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (Seg_Display@num+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2989
	goto	l732
	opt asmopt_on
	
l2989:	
; Switch size 1, requested type "space"
; Number of cases is 16, Range of values is 0 to 15
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           49    25 (average)
; direct_byte           56     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable            20     6 (fixed)
; spacedrange           38     9 (fixed)
; locatedrange          16     3 (fixed)
;	Chosen strategy is simple_byte

	movf (Seg_Display@num),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2863
	xorlw	1^0	; case 1
	skipnz
	goto	l2865
	xorlw	2^1	; case 2
	skipnz
	goto	l2867
	xorlw	3^2	; case 3
	skipnz
	goto	l2869
	xorlw	4^3	; case 4
	skipnz
	goto	l2871
	xorlw	5^4	; case 5
	skipnz
	goto	l2873
	xorlw	6^5	; case 6
	skipnz
	goto	l2875
	xorlw	7^6	; case 7
	skipnz
	goto	l2877
	xorlw	8^7	; case 8
	skipnz
	goto	l2879
	xorlw	9^8	; case 9
	skipnz
	goto	l2881
	xorlw	10^9	; case 10
	skipnz
	goto	l2883
	xorlw	11^10	; case 11
	skipnz
	goto	l2885
	xorlw	12^11	; case 12
	skipnz
	goto	l2887
	xorlw	13^12	; case 13
	skipnz
	goto	l2889
	xorlw	14^13	; case 14
	skipnz
	goto	l2891
	xorlw	15^14	; case 15
	skipnz
	goto	l2893
	goto	l732
	opt asmopt_on

	line	159
	
l715:	
	goto	l732
	line	160
	
l712:	
	line	161
	
l732:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Display
	__end_of_Seg_Display:
;; =============== function _Seg_Display ends ============

	signat	_Seg_Display,8312
	global	_Seg_Init
psect	text151,local,class=CODE,delta=2
global __ptext151
__ptext151:

;; *************** function _Seg_Init *****************
;; Defined at:
;;		line 14 in file "C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Seg7_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2
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
psect	text151
	file	"C:\Users\www\Desktop\PIC16F877A\TWO_DIGIT_7SEGMENT\Seg7_lib.h"
	line	14
	global	__size_of_Seg_Init
	__size_of_Seg_Init	equ	__end_of_Seg_Init-_Seg_Init
	
_Seg_Init:	
	opt	stack 7
; Regs used in _Seg_Init: [status,2]
	line	15
	
l2817:	
;Seg7_lib.h: 15: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	16
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Init
	__end_of_Seg_Init:
;; =============== function _Seg_Init ends ============

	signat	_Seg_Init,88
psect	text152,local,class=CODE,delta=2
global __ptext152
__ptext152:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
