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
	FNROOT	_main
	global	_PORTC
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
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
	file	"SEVEN_SEGMENT.as"
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
	global	??_Seg_Display
??_Seg_Display:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	global	main@counter
main@counter:	; 2 bytes @ 0x2
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Seg_Display
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
;; (0) _main                                                 2     2      0      15
;;                                              2 COMMON     2     2      0
;;                           _Seg_Init
;;                        _Seg_Display
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
;;   _Seg_Init
;;   _Seg_Display
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      4       4       1       28.6%
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
;;		line 10 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  counter         2    2[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2  709[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Seg_Init
;;		_Seg_Display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT\Main.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	11
	
l2662:	
;Main.c: 11: int counter = 0x00;
	clrf	(main@counter)
	clrf	(main@counter+1)
	line	12
	
l2664:	
;Main.c: 12: Seg_Init();
	fcall	_Seg_Init
	goto	l2666
	line	13
;Main.c: 13: while(0x01){
	
l710:	
	line	14
	
l2666:	
;Main.c: 14: Seg_Display(15);
	movlw	low(0Fh)
	movwf	(?_Seg_Display)
	movlw	high(0Fh)
	movwf	((?_Seg_Display))+1
	fcall	_Seg_Display
	goto	l2666
	line	15
	
l711:	
	line	13
	goto	l2666
	
l712:	
	line	17
;Main.c: 15: }
;Main.c: 16: return 0;
;	Return value of _main is never used
	
l713:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Seg_Display
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

;; *************** function _Seg_Display *****************
;; Defined at:
;;		line 15 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT\Seg7_lib.h"
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
psect	text83
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT\Seg7_lib.h"
	line	15
	global	__size_of_Seg_Display
	__size_of_Seg_Display	equ	__end_of_Seg_Display-_Seg_Display
	
_Seg_Display:	
	opt	stack 7
; Regs used in _Seg_Display: [wreg-fsr0h+status,2+status,0]
	line	16
	
l1762:	
;Seg7_lib.h: 16: switch(num){
	goto	l1798
	line	18
;Seg7_lib.h: 18: case 0x00:
	
l689:	
	line	19
	
l1764:	
;Seg7_lib.h: 19: PORTC = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	20
;Seg7_lib.h: 20: break;
	goto	l707
	line	22
;Seg7_lib.h: 22: case 0x01:
	
l691:	
	line	23
	
l1766:	
;Seg7_lib.h: 23: PORTC = 0b01111001;
	movlw	(079h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	24
;Seg7_lib.h: 24: break;
	goto	l707
	line	26
;Seg7_lib.h: 26: case 0x02:
	
l692:	
	line	27
	
l1768:	
;Seg7_lib.h: 27: PORTC = 0b00100100;
	movlw	(024h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
;Seg7_lib.h: 28: break;
	goto	l707
	line	30
;Seg7_lib.h: 30: case 0x03:
	
l693:	
	line	31
	
l1770:	
;Seg7_lib.h: 31: PORTC = 0b00110000;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	32
;Seg7_lib.h: 32: break;
	goto	l707
	line	34
;Seg7_lib.h: 34: case 0x04:
	
l694:	
	line	35
	
l1772:	
;Seg7_lib.h: 35: PORTC = 0b00011001;
	movlw	(019h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	36
;Seg7_lib.h: 36: break;
	goto	l707
	line	38
;Seg7_lib.h: 38: case 0x05:
	
l695:	
	line	39
	
l1774:	
;Seg7_lib.h: 39: PORTC = 0b00010010;
	movlw	(012h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	40
;Seg7_lib.h: 40: break;
	goto	l707
	line	42
;Seg7_lib.h: 42: case 0x06:
	
l696:	
	line	43
	
l1776:	
;Seg7_lib.h: 43: PORTC = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	44
;Seg7_lib.h: 44: break;
	goto	l707
	line	46
;Seg7_lib.h: 46: case 0x07:
	
l697:	
	line	47
	
l1778:	
;Seg7_lib.h: 47: PORTC = 0b01111000;
	movlw	(078h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	48
;Seg7_lib.h: 48: break;
	goto	l707
	line	50
;Seg7_lib.h: 50: case 0x08:
	
l698:	
	line	51
	
l1780:	
;Seg7_lib.h: 51: PORTC = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	52
;Seg7_lib.h: 52: break;
	goto	l707
	line	54
;Seg7_lib.h: 54: case 0x09:
	
l699:	
	line	55
	
l1782:	
;Seg7_lib.h: 55: PORTC = 0b00010000;
	movlw	(010h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	56
;Seg7_lib.h: 56: break;
	goto	l707
	line	58
;Seg7_lib.h: 58: case 0x0A:
	
l700:	
	line	59
	
l1784:	
;Seg7_lib.h: 59: PORTC = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	60
;Seg7_lib.h: 60: break;
	goto	l707
	line	62
;Seg7_lib.h: 62: case 0x0B:
	
l701:	
	line	63
	
l1786:	
;Seg7_lib.h: 63: PORTC = 0b00000011;
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	64
;Seg7_lib.h: 64: break;
	goto	l707
	line	66
;Seg7_lib.h: 66: case 0x0C:
	
l702:	
	line	67
	
l1788:	
;Seg7_lib.h: 67: PORTC = 0b01000110;
	movlw	(046h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	68
;Seg7_lib.h: 68: break;
	goto	l707
	line	70
;Seg7_lib.h: 70: case 0x0D:
	
l703:	
	line	71
	
l1790:	
;Seg7_lib.h: 71: PORTC = 0b00100001;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	72
;Seg7_lib.h: 72: break;
	goto	l707
	line	74
;Seg7_lib.h: 74: case 0x0E:
	
l704:	
	line	75
	
l1792:	
;Seg7_lib.h: 75: PORTC = 0b00000110;
	movlw	(06h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	76
;Seg7_lib.h: 76: break;
	goto	l707
	line	78
;Seg7_lib.h: 78: case 0x0F:
	
l705:	
	line	79
	
l1794:	
;Seg7_lib.h: 79: PORTC = 0b00001110;
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	80
;Seg7_lib.h: 80: break;
	goto	l707
	line	82
;Seg7_lib.h: 82: default:
	
l706:	
	line	83
;Seg7_lib.h: 83: break;
	goto	l707
	line	84
	
l1796:	
;Seg7_lib.h: 84: }
	goto	l707
	line	16
	
l688:	
	
l1798:	
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
	goto	l2688
	goto	l707
	opt asmopt_on
	
l2688:	
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
	goto	l1764
	xorlw	1^0	; case 1
	skipnz
	goto	l1766
	xorlw	2^1	; case 2
	skipnz
	goto	l1768
	xorlw	3^2	; case 3
	skipnz
	goto	l1770
	xorlw	4^3	; case 4
	skipnz
	goto	l1772
	xorlw	5^4	; case 5
	skipnz
	goto	l1774
	xorlw	6^5	; case 6
	skipnz
	goto	l1776
	xorlw	7^6	; case 7
	skipnz
	goto	l1778
	xorlw	8^7	; case 8
	skipnz
	goto	l1780
	xorlw	9^8	; case 9
	skipnz
	goto	l1782
	xorlw	10^9	; case 10
	skipnz
	goto	l1784
	xorlw	11^10	; case 11
	skipnz
	goto	l1786
	xorlw	12^11	; case 12
	skipnz
	goto	l1788
	xorlw	13^12	; case 13
	skipnz
	goto	l1790
	xorlw	14^13	; case 14
	skipnz
	goto	l1792
	xorlw	15^14	; case 15
	skipnz
	goto	l1794
	goto	l707
	opt asmopt_on

	line	84
	
l690:	
	line	85
	
l707:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Display
	__end_of_Seg_Display:
;; =============== function _Seg_Display ends ============

	signat	_Seg_Display,4216
	global	_Seg_Init
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function _Seg_Init *****************
;; Defined at:
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT\Seg7_lib.h"
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
psect	text84
	file	"C:\Users\www\Desktop\PIC16F877A\SEVEN_SEGMENT\Seg7_lib.h"
	line	11
	global	__size_of_Seg_Init
	__size_of_Seg_Init	equ	__end_of_Seg_Init-_Seg_Init
	
_Seg_Init:	
	opt	stack 7
; Regs used in _Seg_Init: [status,2]
	line	12
	
l1760:	
;Seg7_lib.h: 12: TRISC = 0b00000000;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	13
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Init
	__end_of_Seg_Init:
;; =============== function _Seg_Init ends ============

	signat	_Seg_Init,88
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
