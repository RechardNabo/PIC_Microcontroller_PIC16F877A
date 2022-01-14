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
	FNCALL	_main,_Check_btn
	FNROOT	_main
	global	_CARRY
psect	text76,local,class=CODE,delta=2
global __ptext76
__ptext76:
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RB2
_RB2	set	50
	global	_RD0
_RD0	set	64
	global	_TRISB2
_TRISB2	set	1074
	global	_TRISD0
_TRISD0	set	1088
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
	file	"DC_MOTOR.as"
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
	global	?_Check_btn
?_Check_btn:	; 2 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	ds	2
	global	??_Check_btn
??_Check_btn:	; 0 bytes @ 0x2
	ds	2
	global	Check_btn@status
Check_btn@status:	; 2 bytes @ 0x4
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x6
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_Check_btn	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Check_btn
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
;; (0) _main                                                 0     0      0      15
;;                          _Check_btn
;; ---------------------------------------------------------------------------------
;; (1) _Check_btn                                            6     4      2      15
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Check_btn
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
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
;;		line 10 in file "C:\Users\www\Desktop\PIC16F877A\DC_MOTOR\Main.c"
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
;;		_Check_btn
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\DC_MOTOR\Main.c"
	line	10
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l2618:	
;Main.c: 11: TRISD0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1088/8)^080h,(1088)&7
	goto	l2620
	line	12
;Main.c: 12: while(0x01){
	
l689:	
	line	13
	
l2620:	
;Main.c: 13: if(Check_btn() == 0x00){
	fcall	_Check_btn
	movf	((1+(?_Check_btn))),w
	iorwf	((0+(?_Check_btn))),w
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2624
u2240:
	line	14
	
l2622:	
;Main.c: 14: RD0 = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	goto	l2624
	line	15
	
l690:	
	line	16
	
l2624:	
;Main.c: 15: }
;Main.c: 16: if(Check_btn() == 0x01){
	fcall	_Check_btn
	movlw	01h
	xorwf	(0+(?_Check_btn)),w
	iorwf	(1+(?_Check_btn)),w
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2620
u2250:
	line	17
	
l2626:	
;Main.c: 17: RD0 = 0x01;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	goto	l2620
	line	18
	
l691:	
	goto	l2620
	line	19
	
l692:	
	line	12
	goto	l2620
	
l693:	
	line	21
;Main.c: 18: }
;Main.c: 19: }
;Main.c: 20: return 0;
;	Return value of _main is never used
	
l694:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Check_btn
psect	text77,local,class=CODE,delta=2
global __ptext77
__ptext77:

;; *************** function _Check_btn *****************
;; Defined at:
;;		line 23 in file "C:\Users\www\Desktop\PIC16F877A\DC_MOTOR\Main.c"
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
psect	text77
	file	"C:\Users\www\Desktop\PIC16F877A\DC_MOTOR\Main.c"
	line	23
	global	__size_of_Check_btn
	__size_of_Check_btn	equ	__end_of_Check_btn-_Check_btn
	
_Check_btn:	
	opt	stack 7
; Regs used in _Check_btn: [wreg+status,2+status,0]
	line	24
	
l2604:	
;Main.c: 24: TRISB2 = 0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1074/8)^080h,(1074)&7
	line	26
;Main.c: 25: unsigned int status;
;Main.c: 26: if((RB2 = 0x00)== 0x01){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
	btfss	(50/8),(50)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2608
u2220:
	line	27
	
l2606:	
;Main.c: 27: status = 0x01;
	movlw	low(01h)
	movwf	(Check_btn@status)
	movlw	high(01h)
	movwf	((Check_btn@status))+1
	goto	l2608
	line	28
	
l697:	
	line	29
	
l2608:	
;Main.c: 28: }
;Main.c: 29: if((RB2 = 0x00)== 0x00){
	bcf	(50/8),(50)&7
	btfsc	(50/8),(50)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2612
u2230:
	line	30
	
l2610:	
;Main.c: 30: status = 0x00;
	clrf	(Check_btn@status)
	clrf	(Check_btn@status+1)
	goto	l2612
	line	31
	
l698:	
	line	32
	
l2612:	
;Main.c: 31: }
;Main.c: 32: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Check_btn+0)+0+1),f
	movlw	118
movwf	((??_Check_btn+0)+0),f
u2267:
	decfsz	((??_Check_btn+0)+0),f
	goto	u2267
	decfsz	((??_Check_btn+0)+0+1),f
	goto	u2267
	clrwdt
opt asmopt_on

	line	33
	
l2614:	
;Main.c: 33: return status;
	movf	(Check_btn@status+1),w
	clrf	(?_Check_btn+1)
	addwf	(?_Check_btn+1)
	movf	(Check_btn@status),w
	clrf	(?_Check_btn)
	addwf	(?_Check_btn)

	goto	l699
	
l2616:	
	line	34
	
l699:	
	return
	opt stack 0
GLOBAL	__end_of_Check_btn
	__end_of_Check_btn:
;; =============== function _Check_btn ends ============

	signat	_Check_btn,90
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
