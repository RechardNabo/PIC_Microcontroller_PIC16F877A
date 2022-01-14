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
	FNCALL	_main,_Seg_Init
	FNCALL	_main,_KEYPAD_KEYS
	FNCALL	_main,_Seg_Display
	FNROOT	_main
	global	_PORTB
psect	text106,local,class=CODE,delta=2
global __ptext106
__ptext106:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
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
	file	"KEYPAD_INTERFACE_7_SEG.as"
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
	global	?_KEYPAD_INIT
?_KEYPAD_INIT:	; 0 bytes @ 0x0
	global	??_KEYPAD_INIT
??_KEYPAD_INIT:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	Seg_Display@num
Seg_Display@num:	; 2 bytes @ 0x0
	ds	2
	global	??_Seg_Display
??_Seg_Display:	; 0 bytes @ 0x2
	global	?_KEYPAD_KEYS
?_KEYPAD_KEYS:	; 2 bytes @ 0x2
	ds	2
	global	??_KEYPAD_KEYS
??_KEYPAD_KEYS:	; 0 bytes @ 0x4
	ds	2
	global	KEYPAD_KEYS@number
KEYPAD_KEYS@number:	; 2 bytes @ 0x6
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_KEYPAD_KEYS	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_KEYPAD_KEYS
;;   _KEYPAD_KEYS->_Seg_Display
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0      30
;;                                              8 COMMON     2     2      0
;;                        _KEYPAD_INIT
;;                           _Seg_Init
;;                        _KEYPAD_KEYS
;;                        _Seg_Display
;; ---------------------------------------------------------------------------------
;; (1) _KEYPAD_KEYS                                          6     4      2      15
;;                                              2 COMMON     6     4      2
;;                        _Seg_Display (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _KEYPAD_INIT                                          0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Seg_Display                                          2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _Seg_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _KEYPAD_INIT
;;   _Seg_Init
;;   _KEYPAD_KEYS
;;     _Seg_Display (ARG)
;;   _Seg_Display
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 9 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  727[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_KEYPAD_INIT
;;		_Seg_Init
;;		_KEYPAD_KEYS
;;		_Seg_Display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\Main.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	11
	
l2732:	
;Main.c: 11: KEYPAD_INIT();
	fcall	_KEYPAD_INIT
	line	12
	
l2734:	
;Main.c: 12: Seg_Init();
	fcall	_Seg_Init
	goto	l2736
	line	14
;Main.c: 14: while(0x01){
	
l728:	
	line	15
	
l2736:	
;Main.c: 15: Seg_Display(KEYPAD_KEYS());
	fcall	_KEYPAD_KEYS
	movf	(1+(?_KEYPAD_KEYS)),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(0+(?_KEYPAD_KEYS)),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	fcall	_Seg_Display
	line	16
	
l2738:	
;Main.c: 16: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_main+0)+0+1),f
	movlw	118
movwf	((??_main+0)+0),f
u2327:
	decfsz	((??_main+0)+0),f
	goto	u2327
	decfsz	((??_main+0)+0+1),f
	goto	u2327
	clrwdt
opt asmopt_on

	goto	l2736
	line	17
	
l729:	
	line	14
	goto	l2736
	
l730:	
	line	19
;Main.c: 17: }
;Main.c: 18: return 0;
;	Return value of _main is never used
	
l731:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_KEYPAD_KEYS
psect	text107,local,class=CODE,delta=2
global __ptext107
__ptext107:

;; *************** function _KEYPAD_KEYS *****************
;; Defined at:
;;		line 7 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\KEYPAD_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  number          2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text107
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\KEYPAD_lib.h"
	line	7
	global	__size_of_KEYPAD_KEYS
	__size_of_KEYPAD_KEYS	equ	__end_of_KEYPAD_KEYS-_KEYPAD_KEYS
	
_KEYPAD_KEYS:	
	opt	stack 7
; Regs used in _KEYPAD_KEYS: [wreg+status,2+status,0]
	line	10
	
l2682:	
;KEYPAD_lib.h: 8: unsigned int number;
;KEYPAD_lib.h: 10: PORTB = 0b11000001;
	movlw	(0C1h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	11
	
l2684:	
;KEYPAD_lib.h: 11: if(RB3 == 0x01){
	btfss	(51/8),(51)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2688
u2220:
	line	12
	
l2686:	
;KEYPAD_lib.h: 12: number = 0x03;
	movlw	low(03h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(03h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2688
	line	13
	
l715:	
	line	14
	
l2688:	
;KEYPAD_lib.h: 13: }
;KEYPAD_lib.h: 14: if(RB4 == 0x01){
	btfss	(52/8),(52)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2692
u2230:
	line	15
	
l2690:	
;KEYPAD_lib.h: 15: number = 0x06;
	movlw	low(06h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(06h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2692
	line	16
	
l716:	
	line	17
	
l2692:	
;KEYPAD_lib.h: 16: }
;KEYPAD_lib.h: 17: if(RB5 == 0x01){
	btfss	(53/8),(53)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l717
u2240:
	line	18
	
l2694:	
;KEYPAD_lib.h: 18: number = 0x09;
	movlw	low(09h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(09h)
	movwf	((KEYPAD_KEYS@number))+1
	line	19
	
l717:	
	line	20
;KEYPAD_lib.h: 19: }
;KEYPAD_lib.h: 20: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u2337:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u2337
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u2337
	nop2
opt asmopt_on

	line	22
;KEYPAD_lib.h: 22: PORTB = 0b10000010;
	movlw	(082h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	23
	
l2696:	
;KEYPAD_lib.h: 23: if(RB3 == 0x01){
	btfss	(51/8),(51)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2700
u2250:
	line	24
	
l2698:	
;KEYPAD_lib.h: 24: number = 0x02;
	movlw	low(02h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(02h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2700
	line	25
	
l718:	
	line	26
	
l2700:	
;KEYPAD_lib.h: 25: }
;KEYPAD_lib.h: 26: if(RB4 == 0x01){
	btfss	(52/8),(52)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2704
u2260:
	line	27
	
l2702:	
;KEYPAD_lib.h: 27: number = 0x05;
	movlw	low(05h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(05h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2704
	line	28
	
l719:	
	line	29
	
l2704:	
;KEYPAD_lib.h: 28: }
;KEYPAD_lib.h: 29: if(RB5 == 0x01){
	btfss	(53/8),(53)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2708
u2270:
	line	30
	
l2706:	
;KEYPAD_lib.h: 30: number = 0x08;
	movlw	low(08h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(08h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2708
	line	31
	
l720:	
	line	32
	
l2708:	
;KEYPAD_lib.h: 31: }
;KEYPAD_lib.h: 32: if(RB6 == 0x01){
	btfss	(54/8),(54)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l2712
u2280:
	line	33
	
l2710:	
;KEYPAD_lib.h: 33: number = 0x00;
	clrf	(KEYPAD_KEYS@number)
	clrf	(KEYPAD_KEYS@number+1)
	goto	l2712
	line	34
	
l721:	
	line	35
	
l2712:	
;KEYPAD_lib.h: 34: }
;KEYPAD_lib.h: 35: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u2347:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u2347
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u2347
	nop2
opt asmopt_on

	line	37
	
l2714:	
;KEYPAD_lib.h: 37: PORTB = 0b11000100;
	movlw	(0C4h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	38
	
l2716:	
;KEYPAD_lib.h: 38: if(RB3 == 0x01){
	btfss	(51/8),(51)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2720
u2290:
	line	39
	
l2718:	
;KEYPAD_lib.h: 39: number = 0x01;
	movlw	low(01h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(01h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2720
	line	40
	
l722:	
	line	41
	
l2720:	
;KEYPAD_lib.h: 40: }
;KEYPAD_lib.h: 41: if(RB4 == 0x01){
	btfss	(52/8),(52)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l2724
u2300:
	line	42
	
l2722:	
;KEYPAD_lib.h: 42: number = 0x04;
	movlw	low(04h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(04h)
	movwf	((KEYPAD_KEYS@number))+1
	goto	l2724
	line	43
	
l723:	
	line	44
	
l2724:	
;KEYPAD_lib.h: 43: }
;KEYPAD_lib.h: 44: if(RB5 == 0x01){
	btfss	(53/8),(53)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l724
u2310:
	line	45
	
l2726:	
;KEYPAD_lib.h: 45: number = 0x07;
	movlw	low(07h)
	movwf	(KEYPAD_KEYS@number)
	movlw	high(07h)
	movwf	((KEYPAD_KEYS@number))+1
	line	46
	
l724:	
	line	47
;KEYPAD_lib.h: 46: }
;KEYPAD_lib.h: 47: _delay((unsigned long)((2)*(20000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_KEYPAD_KEYS+0)+0+1),f
	movlw	251
movwf	((??_KEYPAD_KEYS+0)+0),f
u2357:
	decfsz	((??_KEYPAD_KEYS+0)+0),f
	goto	u2357
	decfsz	((??_KEYPAD_KEYS+0)+0+1),f
	goto	u2357
	nop2
opt asmopt_on

	line	49
	
l2728:	
;KEYPAD_lib.h: 49: return number;
	movf	(KEYPAD_KEYS@number+1),w
	clrf	(?_KEYPAD_KEYS+1)
	addwf	(?_KEYPAD_KEYS+1)
	movf	(KEYPAD_KEYS@number),w
	clrf	(?_KEYPAD_KEYS)
	addwf	(?_KEYPAD_KEYS)

	goto	l725
	
l2730:	
	line	50
	
l725:	
	return
	opt stack 0
GLOBAL	__end_of_KEYPAD_KEYS
	__end_of_KEYPAD_KEYS:
;; =============== function _KEYPAD_KEYS ends ============

	signat	_KEYPAD_KEYS,90
	global	_KEYPAD_INIT
psect	text108,local,class=CODE,delta=2
global __ptext108
__ptext108:

;; *************** function _KEYPAD_INIT *****************
;; Defined at:
;;		line 3 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\KEYPAD_lib.h"
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
psect	text108
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\KEYPAD_lib.h"
	line	3
	global	__size_of_KEYPAD_INIT
	__size_of_KEYPAD_INIT	equ	__end_of_KEYPAD_INIT-_KEYPAD_INIT
	
_KEYPAD_INIT:	
	opt	stack 7
; Regs used in _KEYPAD_INIT: [wreg]
	line	4
	
l1822:	
;KEYPAD_lib.h: 4: TRISB = 0b11111000;
	movlw	(0F8h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	5
	
l712:	
	return
	opt stack 0
GLOBAL	__end_of_KEYPAD_INIT
	__end_of_KEYPAD_INIT:
;; =============== function _KEYPAD_INIT ends ============

	signat	_KEYPAD_INIT,88
	global	_Seg_Display
psect	text109,local,class=CODE,delta=2
global __ptext109
__ptext109:

;; *************** function _Seg_Display *****************
;; Defined at:
;;		line 15 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\Seg7_lib.h"
;; Parameters:    Size  Location     Type
;;  num             2    0[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text109
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\Seg7_lib.h"
	line	15
	global	__size_of_Seg_Display
	__size_of_Seg_Display	equ	__end_of_Seg_Display-_Seg_Display
	
_Seg_Display:	
	opt	stack 7
; Regs used in _Seg_Display: [wreg-fsr0h+status,2+status,0]
	line	16
	
l1780:	
;Seg7_lib.h: 16: switch(num){
	goto	l1816
	line	18
;Seg7_lib.h: 18: case 0x00:
	
l691:	
	line	19
	
l1782:	
;Seg7_lib.h: 19: PORTC = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	20
;Seg7_lib.h: 20: break;
	goto	l709
	line	22
;Seg7_lib.h: 22: case 0x01:
	
l693:	
	line	23
	
l1784:	
;Seg7_lib.h: 23: PORTC = 0b01111001;
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	24
;Seg7_lib.h: 24: break;
	goto	l709
	line	26
;Seg7_lib.h: 26: case 0x02:
	
l694:	
	line	27
	
l1786:	
;Seg7_lib.h: 27: PORTC = 0b00100100;
	movlw	(024h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
;Seg7_lib.h: 28: break;
	goto	l709
	line	30
;Seg7_lib.h: 30: case 0x03:
	
l695:	
	line	31
	
l1788:	
;Seg7_lib.h: 31: PORTC = 0b00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
;Seg7_lib.h: 32: break;
	goto	l709
	line	34
;Seg7_lib.h: 34: case 0x04:
	
l696:	
	line	35
	
l1790:	
;Seg7_lib.h: 35: PORTC = 0b00011001;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
;Seg7_lib.h: 36: break;
	goto	l709
	line	38
;Seg7_lib.h: 38: case 0x05:
	
l697:	
	line	39
	
l1792:	
;Seg7_lib.h: 39: PORTC = 0b00010010;
	movlw	(012h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
;Seg7_lib.h: 40: break;
	goto	l709
	line	42
;Seg7_lib.h: 42: case 0x06:
	
l698:	
	line	43
	
l1794:	
;Seg7_lib.h: 43: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
;Seg7_lib.h: 44: break;
	goto	l709
	line	46
;Seg7_lib.h: 46: case 0x07:
	
l699:	
	line	47
	
l1796:	
;Seg7_lib.h: 47: PORTC = 0b01111000;
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	48
;Seg7_lib.h: 48: break;
	goto	l709
	line	50
;Seg7_lib.h: 50: case 0x08:
	
l700:	
	line	51
	
l1798:	
;Seg7_lib.h: 51: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	52
;Seg7_lib.h: 52: break;
	goto	l709
	line	54
;Seg7_lib.h: 54: case 0x09:
	
l701:	
	line	55
	
l1800:	
;Seg7_lib.h: 55: PORTC = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	56
;Seg7_lib.h: 56: break;
	goto	l709
	line	58
;Seg7_lib.h: 58: case 0x0A:
	
l702:	
	line	59
	
l1802:	
;Seg7_lib.h: 59: PORTC = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	60
;Seg7_lib.h: 60: break;
	goto	l709
	line	62
;Seg7_lib.h: 62: case 0x0B:
	
l703:	
	line	63
	
l1804:	
;Seg7_lib.h: 63: PORTC = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	64
;Seg7_lib.h: 64: break;
	goto	l709
	line	66
;Seg7_lib.h: 66: case 0x0C:
	
l704:	
	line	67
	
l1806:	
;Seg7_lib.h: 67: PORTC = 0b01000110;
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
;Seg7_lib.h: 68: break;
	goto	l709
	line	70
;Seg7_lib.h: 70: case 0x0D:
	
l705:	
	line	71
	
l1808:	
;Seg7_lib.h: 71: PORTC = 0b00100001;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	72
;Seg7_lib.h: 72: break;
	goto	l709
	line	74
;Seg7_lib.h: 74: case 0x0E:
	
l706:	
	line	75
	
l1810:	
;Seg7_lib.h: 75: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	76
;Seg7_lib.h: 76: break;
	goto	l709
	line	78
;Seg7_lib.h: 78: case 0x0F:
	
l707:	
	line	79
	
l1812:	
;Seg7_lib.h: 79: PORTC = 0b00001110;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
;Seg7_lib.h: 80: break;
	goto	l709
	line	82
;Seg7_lib.h: 82: default:
	
l708:	
	line	83
;Seg7_lib.h: 83: break;
	goto	l709
	line	84
	
l1814:	
;Seg7_lib.h: 84: }
	goto	l709
	line	16
	
l690:	
	
l1816:	
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
	goto	l2760
	goto	l709
	opt asmopt_on
	
l2760:	
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
	goto	l1782
	xorlw	1^0	; case 1
	skipnz
	goto	l1784
	xorlw	2^1	; case 2
	skipnz
	goto	l1786
	xorlw	3^2	; case 3
	skipnz
	goto	l1788
	xorlw	4^3	; case 4
	skipnz
	goto	l1790
	xorlw	5^4	; case 5
	skipnz
	goto	l1792
	xorlw	6^5	; case 6
	skipnz
	goto	l1794
	xorlw	7^6	; case 7
	skipnz
	goto	l1796
	xorlw	8^7	; case 8
	skipnz
	goto	l1798
	xorlw	9^8	; case 9
	skipnz
	goto	l1800
	xorlw	10^9	; case 10
	skipnz
	goto	l1802
	xorlw	11^10	; case 11
	skipnz
	goto	l1804
	xorlw	12^11	; case 12
	skipnz
	goto	l1806
	xorlw	13^12	; case 13
	skipnz
	goto	l1808
	xorlw	14^13	; case 14
	skipnz
	goto	l1810
	xorlw	15^14	; case 15
	skipnz
	goto	l1812
	goto	l709
	opt asmopt_on

	line	84
	
l692:	
	line	85
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Display
	__end_of_Seg_Display:
;; =============== function _Seg_Display ends ============

	signat	_Seg_Display,4216
	global	_Seg_Init
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:

;; *************** function _Seg_Init *****************
;; Defined at:
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\Seg7_lib.h"
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
psect	text110
	file	"C:\Users\www\Desktop\PIC16F877A\KEYPAD_INTERFACE_7_SEG\Seg7_lib.h"
	line	11
	global	__size_of_Seg_Init
	__size_of_Seg_Init	equ	__end_of_Seg_Init-_Seg_Init
	
_Seg_Init:	
	opt	stack 7
; Regs used in _Seg_Init: [status,2]
	line	12
	
l1778:	
;Seg7_lib.h: 12: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	13
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Init
	__end_of_Seg_Init:
;; =============== function _Seg_Init ends ============

	signat	_Seg_Init,88
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
