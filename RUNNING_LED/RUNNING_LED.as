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
	FNCALL	_main,_Display_2
	FNROOT	_main
	global	_PORTB
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB1
_RB1	set	49
	global	_RB3
_RB3	set	51
	global	_RB5
_RB5	set	53
	global	_RB7
_RB7	set	55
	global	_RC1
_RC1	set	57
	global	_RC3
_RC3	set	59
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
	file	"RUNNING_LED.as"
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
	global	?_Display_2
?_Display_2:	; 0 bytes @ 0x0
	global	??_Display_2
??_Display_2:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Display_2
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
;; (0) _main                                                 0     0      0       0
;;                          _Display_2
;; ---------------------------------------------------------------------------------
;; (1) _Display_2                                            3     3      0       0
;;                                              0 COMMON     3     3      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Display_2
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
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
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\RUNNING_LED\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  688[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Display_2
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\RUNNING_LED\Main.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2694:	
;Main.c: 12: TRISB = 0b00000001;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	13
;Main.c: 13: TRISC = 0b11110110;
	movlw	(0F6h)
	movwf	(135)^080h	;volatile
	line	14
	
l2696:	
;Main.c: 14: Display_2();
	fcall	_Display_2
	goto	l689
	line	16
	
l2698:	
	line	17
;Main.c: 16: return 0;
;	Return value of _main is never used
	
l689:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Display_2
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:

;; *************** function _Display_2 *****************
;; Defined at:
;;		line 19 in file "C:\Users\www\Desktop\PIC16F877A\RUNNING_LED\Main.c"
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
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text79
	file	"C:\Users\www\Desktop\PIC16F877A\RUNNING_LED\Main.c"
	line	19
	global	__size_of_Display_2
	__size_of_Display_2	equ	__end_of_Display_2-_Display_2
	
_Display_2:	
	opt	stack 7
; Regs used in _Display_2: [wreg+status,2]
	line	21
;Main.c: 21: while(0x01){
	
l692:	
	line	22
	
l2668:	
;Main.c: 22: PORTB = 0b00000010;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	23
	
l2670:	
;Main.c: 23: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	24
	
l2672:	
;Main.c: 24: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Display_2+0)+0+2),f
movlw	138
movwf	((??_Display_2+0)+0+1),f
	movlw	86
movwf	((??_Display_2+0)+0),f
u2227:
	decfsz	((??_Display_2+0)+0),f
	goto	u2227
	decfsz	((??_Display_2+0)+0+1),f
	goto	u2227
	decfsz	((??_Display_2+0)+0+2),f
	goto	u2227
	nop2
opt asmopt_on

	line	25
	
l2674:	
;Main.c: 25: PORTB = 0b00001000;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	26
	
l2676:	
;Main.c: 26: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	27
;Main.c: 27: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Display_2+0)+0+2),f
movlw	138
movwf	((??_Display_2+0)+0+1),f
	movlw	86
movwf	((??_Display_2+0)+0),f
u2237:
	decfsz	((??_Display_2+0)+0),f
	goto	u2237
	decfsz	((??_Display_2+0)+0+1),f
	goto	u2237
	decfsz	((??_Display_2+0)+0+2),f
	goto	u2237
	nop2
opt asmopt_on

	line	28
;Main.c: 28: PORTB = 0b00100000;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l2678:	
;Main.c: 29: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	30
	
l2680:	
;Main.c: 30: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Display_2+0)+0+2),f
movlw	138
movwf	((??_Display_2+0)+0+1),f
	movlw	86
movwf	((??_Display_2+0)+0),f
u2247:
	decfsz	((??_Display_2+0)+0),f
	goto	u2247
	decfsz	((??_Display_2+0)+0+1),f
	goto	u2247
	decfsz	((??_Display_2+0)+0+2),f
	goto	u2247
	nop2
opt asmopt_on

	line	31
	
l2682:	
;Main.c: 31: PORTB = 0b10000000;
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	32
	
l2684:	
;Main.c: 32: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	33
;Main.c: 33: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Display_2+0)+0+2),f
movlw	138
movwf	((??_Display_2+0)+0+1),f
	movlw	86
movwf	((??_Display_2+0)+0),f
u2257:
	decfsz	((??_Display_2+0)+0),f
	goto	u2257
	decfsz	((??_Display_2+0)+0+1),f
	goto	u2257
	decfsz	((??_Display_2+0)+0+2),f
	goto	u2257
	nop2
opt asmopt_on

	line	34
	
l2686:	
;Main.c: 34: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	35
	
l2688:	
;Main.c: 35: PORTC = 0b00000001;
	movlw	(01h)
	movwf	(7)	;volatile
	line	36
	
l2690:	
;Main.c: 36: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Display_2+0)+0+2),f
movlw	138
movwf	((??_Display_2+0)+0+1),f
	movlw	86
movwf	((??_Display_2+0)+0),f
u2267:
	decfsz	((??_Display_2+0)+0),f
	goto	u2267
	decfsz	((??_Display_2+0)+0+1),f
	goto	u2267
	decfsz	((??_Display_2+0)+0+2),f
	goto	u2267
	nop2
opt asmopt_on

	line	37
	
l2692:	
;Main.c: 37: PORTB = 0b00000000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	38
;Main.c: 38: PORTC = 0b00001000;
	movlw	(08h)
	movwf	(7)	;volatile
	line	39
;Main.c: 39: _delay((unsigned long)((100)*(20000000/4000.0)));
	opt asmopt_off
movlw  3
movwf	((??_Display_2+0)+0+2),f
movlw	138
movwf	((??_Display_2+0)+0+1),f
	movlw	86
movwf	((??_Display_2+0)+0),f
u2277:
	decfsz	((??_Display_2+0)+0),f
	goto	u2277
	decfsz	((??_Display_2+0)+0+1),f
	goto	u2277
	decfsz	((??_Display_2+0)+0+2),f
	goto	u2277
	nop2
opt asmopt_on

	goto	l692
	line	40
	
l693:	
	line	21
	goto	l692
	
l694:	
	line	41
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of_Display_2
	__end_of_Display_2:
;; =============== function _Display_2 ends ============

	signat	_Display_2,88
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
