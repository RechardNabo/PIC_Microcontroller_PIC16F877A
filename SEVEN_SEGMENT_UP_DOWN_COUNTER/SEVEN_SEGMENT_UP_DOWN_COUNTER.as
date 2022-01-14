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
	FNCALL	_main,_Seg_Display
	FNCALL	_main,_Check_button
	FNCALL	_main,_Up_count
	FNCALL	_main,_Down_count
	FNCALL	_Down_count,_Seg_Display
	FNCALL	_Up_count,_Seg_Display
	FNROOT	_main
	global	_PORTB
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_TRISB
_TRISB	set	134
	global	_TRISC0
_TRISC0	set	1080
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
	global	_TRISC3
_TRISC3	set	1083
	global	_TRISC4
_TRISC4	set	1084
	global	_TRISC5
_TRISC5	set	1085
	global	_TRISC6
_TRISC6	set	1086
	global	_TRISC7
_TRISC7	set	1087
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
	file	"SEVEN_SEGMENT_UP_DOWN_COUNTER.as"
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
	global	?_Up_count
?_Up_count:	; 0 bytes @ 0x0
	global	?_Down_count
?_Down_count:	; 0 bytes @ 0x0
	global	?_Check_button
?_Check_button:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	Seg_Display@num
Seg_Display@num:	; 2 bytes @ 0x0
	ds	2
	global	??_Check_button
??_Check_button:	; 0 bytes @ 0x2
	global	??_Seg_Display
??_Seg_Display:	; 0 bytes @ 0x2
	global	??_Up_count
??_Up_count:	; 0 bytes @ 0x2
	global	??_Down_count
??_Down_count:	; 0 bytes @ 0x2
	ds	2
	global	Check_button@status
Check_button@status:	; 2 bytes @ 0x4
	ds	1
	global	Up_count@x
Up_count@x:	; 2 bytes @ 0x5
	global	Down_count@x
Down_count@x:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_Check_button	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Up_count
;;   _main->_Down_count
;;   _Down_count->_Seg_Display
;;   _Up_count->_Seg_Display
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     165
;;                           _Seg_Init
;;                        _Seg_Display
;;                       _Check_button
;;                           _Up_count
;;                         _Down_count
;; ---------------------------------------------------------------------------------
;; (1) _Check_button                                         6     4      2      15
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (1) _Down_count                                           5     5      0      75
;;                                              2 COMMON     5     5      0
;;                        _Seg_Display
;; ---------------------------------------------------------------------------------
;; (1) _Up_count                                             5     5      0      60
;;                                              2 COMMON     5     5      0
;;                        _Seg_Display
;; ---------------------------------------------------------------------------------
;; (2) _Seg_Display                                          2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _Seg_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Seg_Init
;;   _Seg_Display
;;   _Check_button
;;   _Up_count
;;     _Seg_Display
;;   _Down_count
;;     _Seg_Display
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
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
;;		line 9 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  726[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Seg_Init
;;		_Seg_Display
;;		_Check_button
;;		_Up_count
;;		_Down_count
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Main.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l2732:	
;Main.c: 10: TRISB = 0b11111111;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	11
	
l2734:	
;Main.c: 11: Seg_Init();
	fcall	_Seg_Init
	goto	l2736
	line	12
;Main.c: 12: while(0x01){
	
l727:	
	line	13
	
l2736:	
;Main.c: 13: Seg_Display(0x00);
	movlw	low(0)
	movwf	(?_Seg_Display)
	movlw	high(0)
	movwf	((?_Seg_Display))+1
	fcall	_Seg_Display
	line	14
	
l2738:	
;Main.c: 14: if(Check_button() == 0x01){
	fcall	_Check_button
	movlw	01h
	xorwf	(0+(?_Check_button)),w
	iorwf	(1+(?_Check_button)),w
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l2742
u2290:
	line	15
	
l2740:	
;Main.c: 15: Up_count();
	fcall	_Up_count
	goto	l2742
	line	16
	
l728:	
	line	17
	
l2742:	
;Main.c: 16: }
;Main.c: 17: if(Check_button() == 0x02){
	fcall	_Check_button
	movlw	02h
	xorwf	(0+(?_Check_button)),w
	iorwf	(1+(?_Check_button)),w
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l2736
u2300:
	line	18
	
l2744:	
;Main.c: 18: Down_count();
	fcall	_Down_count
	goto	l2736
	line	19
	
l729:	
	goto	l2736
	line	20
	
l730:	
	line	12
	goto	l2736
	
l731:	
	line	22
;Main.c: 19: }
;Main.c: 20: }
;Main.c: 21: return 0;
;	Return value of _main is never used
	
l732:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Check_button
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

;; *************** function _Check_button *****************
;; Defined at:
;;		line 24 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  status          2    4[COMMON] unsigned int 
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
psect	text113
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Main.c"
	line	24
	global	__size_of_Check_button
	__size_of_Check_button	equ	__end_of_Check_button-_Check_button
	
_Check_button:	
	opt	stack 7
; Regs used in _Check_button: [wreg+status,2+status,0]
	line	25
	
l2716:	
;Main.c: 25: unsigned int status = 0x00;
	clrf	(Check_button@status)
	clrf	(Check_button@status+1)
	line	26
	
l2718:	
;Main.c: 26: PORTB = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	27
	
l2720:	
;Main.c: 27: if(RB0 == 0x01){
	btfss	(48/8),(48)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l735
u2270:
	line	28
	
l2722:	
;Main.c: 28: status = 0x01;
	movlw	low(01h)
	movwf	(Check_button@status)
	movlw	high(01h)
	movwf	((Check_button@status))+1
	line	29
	
l735:	
	line	30
;Main.c: 29: }
;Main.c: 30: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Check_button+0)+0+1),f
	movlw	118
movwf	((??_Check_button+0)+0),f
u2317:
	decfsz	((??_Check_button+0)+0),f
	goto	u2317
	decfsz	((??_Check_button+0)+0+1),f
	goto	u2317
	clrwdt
opt asmopt_on

	line	31
	
l2724:	
;Main.c: 31: if(RB1 == 0x01){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l736
u2280:
	line	32
	
l2726:	
;Main.c: 32: status = 0x02;
	movlw	low(02h)
	movwf	(Check_button@status)
	movlw	high(02h)
	movwf	((Check_button@status))+1
	line	33
	
l736:	
	line	34
;Main.c: 33: }
;Main.c: 34: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Check_button+0)+0+1),f
	movlw	118
movwf	((??_Check_button+0)+0),f
u2327:
	decfsz	((??_Check_button+0)+0),f
	goto	u2327
	decfsz	((??_Check_button+0)+0+1),f
	goto	u2327
	clrwdt
opt asmopt_on

	line	35
	
l2728:	
;Main.c: 35: return status;
	movf	(Check_button@status+1),w
	clrf	(?_Check_button+1)
	addwf	(?_Check_button+1)
	movf	(Check_button@status),w
	clrf	(?_Check_button)
	addwf	(?_Check_button)

	goto	l737
	
l2730:	
	line	37
	
l737:	
	return
	opt stack 0
GLOBAL	__end_of_Check_button
	__end_of_Check_button:
;; =============== function _Check_button ends ============

	signat	_Check_button,90
	global	_Down_count
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:

;; *************** function _Down_count *****************
;; Defined at:
;;		line 103 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    5[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Seg_Display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text114
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
	line	103
	global	__size_of_Down_count
	__size_of_Down_count	equ	__end_of_Down_count-_Down_count
	
_Down_count:	
	opt	stack 6
; Regs used in _Down_count: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	104
	
l2700:	
;Seg7_lib.h: 104: int x = 0x0F;
	movlw	low(0Fh)
	movwf	(Down_count@x)
	movlw	high(0Fh)
	movwf	((Down_count@x))+1
	line	105
	
l2702:	
	movf	(Down_count@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2245
	movlw	low(01h)
	subwf	(Down_count@x),w
u2245:

	skipnc
	goto	u2241
	goto	u2240
u2241:
	goto	l721
u2240:
	goto	l724
	
l2704:	
	goto	l724
	
l721:	
	line	106
;Seg7_lib.h: 106: if(x < 0x00){x=0x0F;}
	btfss	(Down_count@x+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l2708
u2250:
	
l2706:	
	movlw	low(0Fh)
	movwf	(Down_count@x)
	movlw	high(0Fh)
	movwf	((Down_count@x))+1
	goto	l2708
	
l723:	
	line	107
	
l2708:	
;Seg7_lib.h: 107: Seg_Display(x);
	movf	(Down_count@x+1),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(Down_count@x),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	fcall	_Seg_Display
	line	108
	
l2710:	
;Seg7_lib.h: 108: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_Down_count+0)+0+2),f
movlw	175
movwf	((??_Down_count+0)+0+1),f
	movlw	193
movwf	((??_Down_count+0)+0),f
u2337:
	decfsz	((??_Down_count+0)+0),f
	goto	u2337
	decfsz	((??_Down_count+0)+0+1),f
	goto	u2337
	decfsz	((??_Down_count+0)+0+2),f
	goto	u2337
	clrwdt
opt asmopt_on

	line	105
	
l2712:	
	movlw	low(-1)
	addwf	(Down_count@x),f
	skipnc
	incf	(Down_count@x+1),f
	movlw	high(-1)
	addwf	(Down_count@x+1),f
	
l2714:	
	movf	(Down_count@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2265
	movlw	low(01h)
	subwf	(Down_count@x),w
u2265:

	skipnc
	goto	u2261
	goto	u2260
u2261:
	goto	l721
u2260:
	goto	l724
	
l722:	
	line	110
	
l724:	
	return
	opt stack 0
GLOBAL	__end_of_Down_count
	__end_of_Down_count:
;; =============== function _Down_count ends ============

	signat	_Down_count,88
	global	_Up_count
psect	text115,local,class=CODE,delta=2
global __ptext115
__ptext115:

;; *************** function _Up_count *****************
;; Defined at:
;;		line 94 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               2    5[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Seg_Display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text115
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
	line	94
	global	__size_of_Up_count
	__size_of_Up_count	equ	__end_of_Up_count-_Up_count
	
_Up_count:	
	opt	stack 6
; Regs used in _Up_count: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	95
	
l2686:	
;Seg7_lib.h: 95: int x = 0x00;
	clrf	(Up_count@x)
	clrf	(Up_count@x+1)
	line	96
;Seg7_lib.h: 96: while(x!=0x10){
	goto	l2698
	
l715:	
	line	97
	
l2688:	
;Seg7_lib.h: 97: if(x > 0x0F){x=0x00;}
	movf	(Up_count@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(010h)
	subwf	(Up_count@x),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2692
u2220:
	
l2690:	
	clrf	(Up_count@x)
	clrf	(Up_count@x+1)
	goto	l2692
	
l716:	
	line	98
	
l2692:	
;Seg7_lib.h: 98: Seg_Display(x);
	movf	(Up_count@x+1),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(Up_count@x),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	fcall	_Seg_Display
	line	99
	
l2694:	
;Seg7_lib.h: 99: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_Up_count+0)+0+2),f
movlw	175
movwf	((??_Up_count+0)+0+1),f
	movlw	193
movwf	((??_Up_count+0)+0),f
u2347:
	decfsz	((??_Up_count+0)+0),f
	goto	u2347
	decfsz	((??_Up_count+0)+0+1),f
	goto	u2347
	decfsz	((??_Up_count+0)+0+2),f
	goto	u2347
	clrwdt
opt asmopt_on

	line	100
	
l2696:	
;Seg7_lib.h: 100: x++;
	movlw	low(01h)
	addwf	(Up_count@x),f
	skipnc
	incf	(Up_count@x+1),f
	movlw	high(01h)
	addwf	(Up_count@x+1),f
	goto	l2698
	line	101
	
l714:	
	line	96
	
l2698:	
	movlw	010h
	xorwf	(Up_count@x),w
	iorwf	(Up_count@x+1),w
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l2688
u2230:
	goto	l718
	
l717:	
	line	102
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_Up_count
	__end_of_Up_count:
;; =============== function _Up_count ends ============

	signat	_Up_count,88
	global	_Seg_Display
psect	text116,local,class=CODE,delta=2
global __ptext116
__ptext116:

;; *************** function _Seg_Display *****************
;; Defined at:
;;		line 23 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
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
;;		_Up_count
;;		_Down_count
;;		_main
;; This function uses a non-reentrant model
;;
psect	text116
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
	line	23
	global	__size_of_Seg_Display
	__size_of_Seg_Display	equ	__end_of_Seg_Display-_Seg_Display
	
_Seg_Display:	
	opt	stack 6
; Regs used in _Seg_Display: [wreg-fsr0h+status,2+status,0]
	line	24
	
l1786:	
;Seg7_lib.h: 24: switch(num){
	goto	l1822
	line	26
;Seg7_lib.h: 26: case 0x00:
	
l693:	
	line	27
	
l1788:	
;Seg7_lib.h: 27: PORTC = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
;Seg7_lib.h: 28: break;
	goto	l711
	line	30
;Seg7_lib.h: 30: case 0x01:
	
l695:	
	line	31
	
l1790:	
;Seg7_lib.h: 31: PORTC = 0b01111001;
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
;Seg7_lib.h: 32: break;
	goto	l711
	line	34
;Seg7_lib.h: 34: case 0x02:
	
l696:	
	line	35
	
l1792:	
;Seg7_lib.h: 35: PORTC = 0b00100100;
	movlw	(024h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
;Seg7_lib.h: 36: break;
	goto	l711
	line	38
;Seg7_lib.h: 38: case 0x03:
	
l697:	
	line	39
	
l1794:	
;Seg7_lib.h: 39: PORTC = 0b00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
;Seg7_lib.h: 40: break;
	goto	l711
	line	42
;Seg7_lib.h: 42: case 0x04:
	
l698:	
	line	43
	
l1796:	
;Seg7_lib.h: 43: PORTC = 0b00011001;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
;Seg7_lib.h: 44: break;
	goto	l711
	line	46
;Seg7_lib.h: 46: case 0x05:
	
l699:	
	line	47
	
l1798:	
;Seg7_lib.h: 47: PORTC = 0b00010010;
	movlw	(012h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	48
;Seg7_lib.h: 48: break;
	goto	l711
	line	50
;Seg7_lib.h: 50: case 0x06:
	
l700:	
	line	51
	
l1800:	
;Seg7_lib.h: 51: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	52
;Seg7_lib.h: 52: break;
	goto	l711
	line	54
;Seg7_lib.h: 54: case 0x07:
	
l701:	
	line	55
	
l1802:	
;Seg7_lib.h: 55: PORTC = 0b01111000;
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	56
;Seg7_lib.h: 56: break;
	goto	l711
	line	58
;Seg7_lib.h: 58: case 0x08:
	
l702:	
	line	59
	
l1804:	
;Seg7_lib.h: 59: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	60
;Seg7_lib.h: 60: break;
	goto	l711
	line	62
;Seg7_lib.h: 62: case 0x09:
	
l703:	
	line	63
	
l1806:	
;Seg7_lib.h: 63: PORTC = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	64
;Seg7_lib.h: 64: break;
	goto	l711
	line	66
;Seg7_lib.h: 66: case 0x0A:
	
l704:	
	line	67
	
l1808:	
;Seg7_lib.h: 67: PORTC = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
;Seg7_lib.h: 68: break;
	goto	l711
	line	70
;Seg7_lib.h: 70: case 0x0B:
	
l705:	
	line	71
	
l1810:	
;Seg7_lib.h: 71: PORTC = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	72
;Seg7_lib.h: 72: break;
	goto	l711
	line	74
;Seg7_lib.h: 74: case 0x0C:
	
l706:	
	line	75
	
l1812:	
;Seg7_lib.h: 75: PORTC = 0b01000110;
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	76
;Seg7_lib.h: 76: break;
	goto	l711
	line	78
;Seg7_lib.h: 78: case 0x0D:
	
l707:	
	line	79
	
l1814:	
;Seg7_lib.h: 79: PORTC = 0b00100001;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
;Seg7_lib.h: 80: break;
	goto	l711
	line	82
;Seg7_lib.h: 82: case 0x0E:
	
l708:	
	line	83
	
l1816:	
;Seg7_lib.h: 83: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	84
;Seg7_lib.h: 84: break;
	goto	l711
	line	86
;Seg7_lib.h: 86: case 0x0F:
	
l709:	
	line	87
	
l1818:	
;Seg7_lib.h: 87: PORTC = 0b00001110;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	88
;Seg7_lib.h: 88: break;
	goto	l711
	line	90
;Seg7_lib.h: 90: default:
	
l710:	
	line	91
;Seg7_lib.h: 91: break;
	goto	l711
	line	92
	
l1820:	
;Seg7_lib.h: 92: }
	goto	l711
	line	24
	
l692:	
	
l1822:	
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
	goto	l2766
	goto	l711
	opt asmopt_on
	
l2766:	
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
	goto	l1788
	xorlw	1^0	; case 1
	skipnz
	goto	l1790
	xorlw	2^1	; case 2
	skipnz
	goto	l1792
	xorlw	3^2	; case 3
	skipnz
	goto	l1794
	xorlw	4^3	; case 4
	skipnz
	goto	l1796
	xorlw	5^4	; case 5
	skipnz
	goto	l1798
	xorlw	6^5	; case 6
	skipnz
	goto	l1800
	xorlw	7^6	; case 7
	skipnz
	goto	l1802
	xorlw	8^7	; case 8
	skipnz
	goto	l1804
	xorlw	9^8	; case 9
	skipnz
	goto	l1806
	xorlw	10^9	; case 10
	skipnz
	goto	l1808
	xorlw	11^10	; case 11
	skipnz
	goto	l1810
	xorlw	12^11	; case 12
	skipnz
	goto	l1812
	xorlw	13^12	; case 13
	skipnz
	goto	l1814
	xorlw	14^13	; case 14
	skipnz
	goto	l1816
	xorlw	15^14	; case 15
	skipnz
	goto	l1818
	goto	l711
	opt asmopt_on

	line	92
	
l694:	
	line	93
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Display
	__end_of_Seg_Display:
;; =============== function _Seg_Display ends ============

	signat	_Seg_Display,4216
	global	_Seg_Init
psect	text117,local,class=CODE,delta=2
global __ptext117
__ptext117:

;; *************** function _Seg_Init *****************
;; Defined at:
;;		line 12 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
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
psect	text117
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_UP_DOWN_COUNTER\Seg7_lib.h"
	line	12
	global	__size_of_Seg_Init
	__size_of_Seg_Init	equ	__end_of_Seg_Init-_Seg_Init
	
_Seg_Init:	
	opt	stack 7
; Regs used in _Seg_Init: []
	line	13
	
l1784:	
;Seg7_lib.h: 13: TRISC0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1080/8)^080h,(1080)&7
	line	14
;Seg7_lib.h: 14: TRISC1 = 0x00;
	bcf	(1081/8)^080h,(1081)&7
	line	15
;Seg7_lib.h: 15: TRISC2 = 0x00;
	bcf	(1082/8)^080h,(1082)&7
	line	16
;Seg7_lib.h: 16: TRISC3 = 0x00;
	bcf	(1083/8)^080h,(1083)&7
	line	17
;Seg7_lib.h: 17: TRISC4 = 0x00;
	bcf	(1084/8)^080h,(1084)&7
	line	18
;Seg7_lib.h: 18: TRISC5 = 0x00;
	bcf	(1085/8)^080h,(1085)&7
	line	19
;Seg7_lib.h: 19: TRISC6 = 0x00;
	bcf	(1086/8)^080h,(1086)&7
	line	20
;Seg7_lib.h: 20: TRISC7 = 0x00;
	bcf	(1087/8)^080h,(1087)&7
	line	21
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Init
	__end_of_Seg_Init:
;; =============== function _Seg_Init ends ============

	signat	_Seg_Init,88
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
