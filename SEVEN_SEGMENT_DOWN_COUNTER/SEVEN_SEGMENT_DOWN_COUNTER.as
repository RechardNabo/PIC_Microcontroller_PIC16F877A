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
	FNCALL	_main,_count
	FNCALL	_count,_Seg_Display
	FNROOT	_main
	global	_PORTC
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	file	"SEVEN_SEGMENT_DOWN_COUNTER.as"
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
	global	?_count
?_count:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	Seg_Display@num
Seg_Display@num:	; 2 bytes @ 0x0
	ds	2
	global	??_Seg_Display
??_Seg_Display:	; 0 bytes @ 0x2
	global	??_count
??_count:	; 0 bytes @ 0x2
	ds	3
	global	count@x
count@x:	; 2 bytes @ 0x5
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x7
	global	main@counter
main@counter:	; 2 bytes @ 0x7
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_count
;;   _count->_Seg_Display
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
;; (0) _main                                                 2     2      0      75
;;                                              7 COMMON     2     2      0
;;                           _Seg_Init
;;                              _count
;; ---------------------------------------------------------------------------------
;; (1) _count                                                5     5      0      75
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
;;   _count
;;     _Seg_Display
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       9       1       64.3%
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
;;		line 9 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  counter         2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2  717[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Seg_Init
;;		_count
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Main.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l2684:	
;Main.c: 10: int counter = 0x00;
	clrf	(main@counter)
	clrf	(main@counter+1)
	line	11
	
l2686:	
;Main.c: 11: Seg_Init();
	fcall	_Seg_Init
	goto	l2688
	line	12
;Main.c: 12: while(0x01){
	
l718:	
	line	13
	
l2688:	
;Main.c: 13: count();
	fcall	_count
	goto	l2688
	line	14
	
l719:	
	line	12
	goto	l2688
	
l720:	
	line	16
;Main.c: 14: }
;Main.c: 15: return 0;
;	Return value of _main is never used
	
l721:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_count
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _count *****************
;; Defined at:
;;		line 95 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Seg7_lib.h"
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
psect	text89
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Seg7_lib.h"
	line	95
	global	__size_of_count
	__size_of_count	equ	__end_of_count-_count
	
_count:	
	opt	stack 6
; Regs used in _count: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	96
	
l2670:	
;Seg7_lib.h: 96: int x = 0x00;
	clrf	(count@x)
	clrf	(count@x+1)
	line	97
	
l2672:	
	movf	(count@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(010h)
	subwf	(count@x),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2676
u2220:
	goto	l715
	
l2674:	
	goto	l715
	
l712:	
	line	98
	goto	l2676
	
l714:	
	line	99
	
l2676:	
;Seg7_lib.h: 99: Seg_Display(x);
	movf	(count@x+1),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(count@x),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	fcall	_Seg_Display
	line	100
	
l2678:	
;Seg7_lib.h: 100: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
movwf	((??_count+0)+0+2),f
movlw	175
movwf	((??_count+0)+0+1),f
	movlw	193
movwf	((??_count+0)+0),f
u2247:
	decfsz	((??_count+0)+0),f
	goto	u2247
	decfsz	((??_count+0)+0+1),f
	goto	u2247
	decfsz	((??_count+0)+0+2),f
	goto	u2247
	clrwdt
opt asmopt_on

	line	97
	
l2680:	
	movlw	low(01h)
	addwf	(count@x),f
	skipnc
	incf	(count@x+1),f
	movlw	high(01h)
	addwf	(count@x+1),f
	
l2682:	
	movf	(count@x+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(010h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(010h)
	subwf	(count@x),w
u2235:

	skipc
	goto	u2231
	goto	u2230
u2231:
	goto	l2676
u2230:
	goto	l715
	
l713:	
	line	102
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_count
	__end_of_count:
;; =============== function _count ends ============

	signat	_count,88
	global	_Seg_Display
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:

;; *************** function _Seg_Display *****************
;; Defined at:
;;		line 23 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Seg7_lib.h"
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
;;		_count
;; This function uses a non-reentrant model
;;
psect	text90
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Seg7_lib.h"
	line	23
	global	__size_of_Seg_Display
	__size_of_Seg_Display	equ	__end_of_Seg_Display-_Seg_Display
	
_Seg_Display:	
	opt	stack 6
; Regs used in _Seg_Display: [wreg-fsr0h+status,2+status,0]
	line	24
	
l1770:	
;Seg7_lib.h: 24: switch(num){
	goto	l1806
	line	26
;Seg7_lib.h: 26: case 0x00:
	
l691:	
	line	27
	
l1772:	
;Seg7_lib.h: 27: PORTC = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
;Seg7_lib.h: 28: break;
	goto	l709
	line	30
;Seg7_lib.h: 30: case 0x01:
	
l693:	
	line	31
	
l1774:	
;Seg7_lib.h: 31: PORTC = 0b01111001;
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
;Seg7_lib.h: 32: break;
	goto	l709
	line	34
;Seg7_lib.h: 34: case 0x02:
	
l694:	
	line	35
	
l1776:	
;Seg7_lib.h: 35: PORTC = 0b00100100;
	movlw	(024h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
;Seg7_lib.h: 36: break;
	goto	l709
	line	38
;Seg7_lib.h: 38: case 0x03:
	
l695:	
	line	39
	
l1778:	
;Seg7_lib.h: 39: PORTC = 0b00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
;Seg7_lib.h: 40: break;
	goto	l709
	line	42
;Seg7_lib.h: 42: case 0x04:
	
l696:	
	line	43
	
l1780:	
;Seg7_lib.h: 43: PORTC = 0b00011001;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
;Seg7_lib.h: 44: break;
	goto	l709
	line	46
;Seg7_lib.h: 46: case 0x05:
	
l697:	
	line	47
	
l1782:	
;Seg7_lib.h: 47: PORTC = 0b00010010;
	movlw	(012h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	48
;Seg7_lib.h: 48: break;
	goto	l709
	line	50
;Seg7_lib.h: 50: case 0x06:
	
l698:	
	line	51
	
l1784:	
;Seg7_lib.h: 51: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	52
;Seg7_lib.h: 52: break;
	goto	l709
	line	54
;Seg7_lib.h: 54: case 0x07:
	
l699:	
	line	55
	
l1786:	
;Seg7_lib.h: 55: PORTC = 0b01111000;
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	56
;Seg7_lib.h: 56: break;
	goto	l709
	line	58
;Seg7_lib.h: 58: case 0x08:
	
l700:	
	line	59
	
l1788:	
;Seg7_lib.h: 59: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	60
;Seg7_lib.h: 60: break;
	goto	l709
	line	62
;Seg7_lib.h: 62: case 0x09:
	
l701:	
	line	63
	
l1790:	
;Seg7_lib.h: 63: PORTC = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	64
;Seg7_lib.h: 64: break;
	goto	l709
	line	66
;Seg7_lib.h: 66: case 0x0A:
	
l702:	
	line	67
	
l1792:	
;Seg7_lib.h: 67: PORTC = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
;Seg7_lib.h: 68: break;
	goto	l709
	line	70
;Seg7_lib.h: 70: case 0x0B:
	
l703:	
	line	71
	
l1794:	
;Seg7_lib.h: 71: PORTC = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	72
;Seg7_lib.h: 72: break;
	goto	l709
	line	74
;Seg7_lib.h: 74: case 0x0C:
	
l704:	
	line	75
	
l1796:	
;Seg7_lib.h: 75: PORTC = 0b01000110;
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	76
;Seg7_lib.h: 76: break;
	goto	l709
	line	78
;Seg7_lib.h: 78: case 0x0D:
	
l705:	
	line	79
	
l1798:	
;Seg7_lib.h: 79: PORTC = 0b00100001;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
;Seg7_lib.h: 80: break;
	goto	l709
	line	82
;Seg7_lib.h: 82: case 0x0E:
	
l706:	
	line	83
	
l1800:	
;Seg7_lib.h: 83: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	84
;Seg7_lib.h: 84: break;
	goto	l709
	line	86
;Seg7_lib.h: 86: case 0x0F:
	
l707:	
	line	87
	
l1802:	
;Seg7_lib.h: 87: PORTC = 0b00001110;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	88
;Seg7_lib.h: 88: break;
	goto	l709
	line	90
;Seg7_lib.h: 90: default:
	
l708:	
	line	91
;Seg7_lib.h: 91: break;
	goto	l709
	line	92
	
l1804:	
;Seg7_lib.h: 92: }
	goto	l709
	line	24
	
l690:	
	
l1806:	
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
	goto	l2710
	goto	l709
	opt asmopt_on
	
l2710:	
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
	goto	l1772
	xorlw	1^0	; case 1
	skipnz
	goto	l1774
	xorlw	2^1	; case 2
	skipnz
	goto	l1776
	xorlw	3^2	; case 3
	skipnz
	goto	l1778
	xorlw	4^3	; case 4
	skipnz
	goto	l1780
	xorlw	5^4	; case 5
	skipnz
	goto	l1782
	xorlw	6^5	; case 6
	skipnz
	goto	l1784
	xorlw	7^6	; case 7
	skipnz
	goto	l1786
	xorlw	8^7	; case 8
	skipnz
	goto	l1788
	xorlw	9^8	; case 9
	skipnz
	goto	l1790
	xorlw	10^9	; case 10
	skipnz
	goto	l1792
	xorlw	11^10	; case 11
	skipnz
	goto	l1794
	xorlw	12^11	; case 12
	skipnz
	goto	l1796
	xorlw	13^12	; case 13
	skipnz
	goto	l1798
	xorlw	14^13	; case 14
	skipnz
	goto	l1800
	xorlw	15^14	; case 15
	skipnz
	goto	l1802
	goto	l709
	opt asmopt_on

	line	92
	
l692:	
	line	93
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Display
	__end_of_Seg_Display:
;; =============== function _Seg_Display ends ============

	signat	_Seg_Display,4216
	global	_Seg_Init
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _Seg_Init *****************
;; Defined at:
;;		line 12 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Seg7_lib.h"
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
psect	text91
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT_DOWN_COUNTER\Seg7_lib.h"
	line	12
	global	__size_of_Seg_Init
	__size_of_Seg_Init	equ	__end_of_Seg_Init-_Seg_Init
	
_Seg_Init:	
	opt	stack 7
; Regs used in _Seg_Init: []
	line	13
	
l1768:	
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
	
l687:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Init
	__end_of_Seg_Init:
;; =============== function _Seg_Init ends ============

	signat	_Seg_Init,88
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
