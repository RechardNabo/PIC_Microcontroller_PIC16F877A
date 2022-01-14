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
	FNCALL	_main,_Random_num
	FNCALL	_main,_Seg_Display
	FNCALL	_Random_num,_rand
	FNCALL	_Random_num,___lwmod
	FNCALL	_rand,_srand
	FNCALL	_rand,___lmul
	FNROOT	_main
	global	_randx
	global	_randf
	global	_PORTC
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:
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
	file	"RANDOM_NUMBERS.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_randx:
       ds      4

_randf:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
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
	global	?_srand
?_srand:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	srand@x
srand@x:	; 2 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	2
	global	??_srand
??_srand:	; 0 bytes @ 0x2
	ds	2
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	4
	global	??___lmul
??___lmul:	; 0 bytes @ 0x8
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x9
	ds	4
	global	??___lwmod
??___lwmod:	; 0 bytes @ 0xD
	ds	1
	global	??_Seg_Display
??_Seg_Display:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x0
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x4
	ds	1
	global	?_Seg_Display
?_Seg_Display:	; 0 bytes @ 0x5
	global	Seg_Display@num
Seg_Display@num:	; 2 bytes @ 0x5
	ds	2
	global	?_rand
?_rand:	; 2 bytes @ 0x7
	ds	2
	global	??_rand
??_rand:	; 0 bytes @ 0x9
	ds	9
	global	?_Random_num
?_Random_num:	; 2 bytes @ 0x12
	global	Random_num@min
Random_num@min:	; 2 bytes @ 0x12
	ds	2
	global	Random_num@max
Random_num@max:	; 2 bytes @ 0x14
	ds	2
	global	??_Random_num
??_Random_num:	; 0 bytes @ 0x16
	ds	4
	global	Random_num@number
Random_num@number:	; 2 bytes @ 0x1A
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x1C
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     31      36
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_rand	int  size(1) Largest target is 0
;;
;; ?___lmul	unsigned long  size(1) Largest target is 0
;;
;; ?_Random_num	int  size(1) Largest target is 0
;;
;; ?___lwmod	unsigned int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _Random_num->___lwmod
;;   _rand->___lwmod
;;   ___lwmod->___lmul
;;   _Seg_Display->___lwmod
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_Random_num
;;   _Random_num->_rand
;;   _rand->_Seg_Display
;;   _Seg_Display->___lwmod
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
;; (0) _main                                                 3     3      0     384
;;                                             28 BANK0      3     3      0
;;                           _Seg_Init
;;                         _Random_num
;;                        _Seg_Display
;; ---------------------------------------------------------------------------------
;; (1) _Random_num                                          10     6      4     362
;;                                             18 BANK0     10     6      4
;;                               _rand
;;                            ___lwmod
;;                        _Seg_Display (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _rand                                                11     9      2     114
;;                                              7 BANK0     11     9      2
;;                              _srand
;;                             ___lmul
;;                        _Seg_Display (ARG)
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___lmul                                              13     5      8      92
;;                                              0 COMMON    13     5      8
;; ---------------------------------------------------------------------------------
;; (2) ___lwmod                                              6     2      4     159
;;                                             13 COMMON     1     1      0
;;                                              0 BANK0      5     1      4
;;                              _srand (ARG)
;;                             ___lmul (ARG)
;; ---------------------------------------------------------------------------------
;; (3) _srand                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _Seg_Display                                          2     0      2      22
;;                                              5 BANK0      2     0      2
;;                              _srand (ARG)
;;                             ___lmul (ARG)
;;                            ___lwmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _Seg_Init                                             0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Seg_Init
;;   _Random_num
;;     _rand
;;       _srand
;;       ___lmul
;;       _Seg_Display (ARG)
;;         _srand (ARG)
;;         ___lmul (ARG)
;;         ___lwmod (ARG)
;;           _srand (ARG)
;;           ___lmul (ARG)
;;       ___lwmod (ARG)
;;         _srand (ARG)
;;         ___lmul (ARG)
;;     ___lwmod
;;       _srand (ARG)
;;       ___lmul (ARG)
;;     _Seg_Display (ARG)
;;       _srand (ARG)
;;       ___lmul (ARG)
;;       ___lwmod (ARG)
;;         _srand (ARG)
;;         ___lmul (ARG)
;;   _Seg_Display
;;     _srand (ARG)
;;     ___lmul (ARG)
;;     ___lwmod (ARG)
;;       _srand (ARG)
;;       ___lmul (ARG)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      32       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     1F      24       5       45.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      35      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  711[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Seg_Init
;;		_Random_num
;;		_Seg_Display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Main.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	12
	
l2831:	
;Main.c: 12: Seg_Init();
	fcall	_Seg_Init
	goto	l2833
	line	13
;Main.c: 13: while(0x01){
	
l712:	
	line	14
	
l2833:	
;Main.c: 14: Seg_Display(Random_num(1,9));
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Random_num)
	movlw	high(01h)
	movwf	((?_Random_num))+1
	movlw	low(09h)
	movwf	0+(?_Random_num)+02h
	movlw	high(09h)
	movwf	(0+(?_Random_num)+02h)+1
	fcall	_Random_num
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_Random_num)),w
	clrf	(?_Seg_Display+1)
	addwf	(?_Seg_Display+1)
	movf	(0+(?_Random_num)),w
	clrf	(?_Seg_Display)
	addwf	(?_Seg_Display)

	fcall	_Seg_Display
	line	15
	
l2835:	
;Main.c: 15: _delay((unsigned long)((500)*(20000000/4000.0)));
	opt asmopt_off
movlw  13
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	175
movwf	((??_main+0)+0+1),f
	movlw	193
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
	decfsz	((??_main+0)+0+2),f
	goto	u2397
	clrwdt
opt asmopt_on

	goto	l2833
	line	16
	
l713:	
	line	13
	goto	l2833
	
l714:	
	line	18
;Main.c: 16: }
;Main.c: 17: return 0;
;	Return value of _main is never used
	
l715:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_Random_num
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _Random_num *****************
;; Defined at:
;;		line 5 in file "C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Rand_num.h"
;; Parameters:    Size  Location     Type
;;  min             2   18[BANK0 ] const unsigned int 
;;  max             2   20[BANK0 ] const unsigned int 
;; Auto vars:     Size  Location     Type
;;  number          2   26[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;                  2   18[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_rand
;;		___lwmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text211
	file	"C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Rand_num.h"
	line	5
	global	__size_of_Random_num
	__size_of_Random_num	equ	__end_of_Random_num-_Random_num
	
_Random_num:	
	opt	stack 5
; Regs used in _Random_num: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l2825:	
;Rand_num.h: 6: unsigned int number;
;Rand_num.h: 7: number = ((unsigned int)rand()%(max-min+1))+min;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(Random_num@min),w
	movwf	(??_Random_num+0)+0
	comf	(Random_num@min+1),w
	movwf	((??_Random_num+0)+0+1)
	incf	(??_Random_num+0)+0,f
	skipnz
	incf	((??_Random_num+0)+0+1),f
	movf	(Random_num@max),w
	addwf	0+(??_Random_num+0)+0,w
	movwf	(??_Random_num+2)+0
	movf	(Random_num@max+1),w
	skipnc
	incf	(Random_num@max+1),w
	addwf	1+(??_Random_num+0)+0,w
	movwf	1+(??_Random_num+2)+0
	movf	0+(??_Random_num+2)+0,w
	addlw	low(01h)
	movwf	(?___lwmod)
	movf	1+(??_Random_num+2)+0,w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(?___lwmod)
	fcall	_rand
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_rand)),w
	clrf	1+(?___lwmod)+02h
	addwf	1+(?___lwmod)+02h
	movf	(0+(?_rand)),w
	clrf	0+(?___lwmod)+02h
	addwf	0+(?___lwmod)+02h

	fcall	___lwmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Random_num@min),w
	addwf	(0+(?___lwmod)),w
	movwf	(Random_num@number)
	movf	(Random_num@min+1),w
	skipnc
	incf	(Random_num@min+1),w
	addwf	(1+(?___lwmod)),w
	movwf	1+(Random_num@number)
	line	8
	
l2827:	
;Rand_num.h: 8: return number;
	movf	(Random_num@number+1),w
	clrf	(?_Random_num+1)
	addwf	(?_Random_num+1)
	movf	(Random_num@number),w
	clrf	(?_Random_num)
	addwf	(?_Random_num)

	goto	l709
	
l2829:	
	line	9
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_Random_num
	__end_of_Random_num:
;; =============== function _Random_num ends ============

	signat	_Random_num,8314
	global	_rand
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:

;; *************** function _rand *****************
;; Defined at:
;;		line 14 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\rand.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    7[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       9       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_srand
;;		___lmul
;; This function is called by:
;;		_Random_num
;; This function uses a non-reentrant model
;;
psect	text212
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\rand.c"
	line	14
	global	__size_of_rand
	__size_of_rand	equ	__end_of_rand-_rand
	
_rand:	
	opt	stack 5
; Regs used in _rand: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2819:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_randf),f
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l1399
u2360:
	line	16
	
l2821:	
	movlw	low(01h)
	movwf	(?_srand)
	movlw	high(01h)
	movwf	((?_srand))+1
	fcall	_srand
	
l1399:	
	line	17
	movlw	039h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??_rand+0)+0)
	movlw	030h
	movwf	((??_rand+0)+0+1)
	movlw	0
	movwf	((??_rand+0)+0+2)
	movlw	0
	movwf	((??_rand+0)+0+3)
	movf	(_randx+3),w
	movwf	(?___lmul+3)
	movf	(_randx+2),w
	movwf	(?___lmul+2)
	movf	(_randx+1),w
	movwf	(?___lmul+1)
	movf	(_randx),w
	movwf	(?___lmul)

	movlw	041h
	movwf	3+(?___lmul)+04h
	movlw	0C6h
	movwf	2+(?___lmul)+04h
	movlw	04Eh
	movwf	1+(?___lmul)+04h
	movlw	06Dh
	movwf	0+(?___lmul)+04h

	fcall	___lmul
	movf	(0+(?___lmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(??_rand+0)+0,f
	movf	(1+(?___lmul)),w
	skipnc
	incfsz	(1+(?___lmul)),w
	goto	u2370
	goto	u2371
u2370:
	addwf	(??_rand+0)+1,f
u2371:
	movf	(2+(?___lmul)),w
	skipnc
	incfsz	(2+(?___lmul)),w
	goto	u2372
	goto	u2373
u2372:
	addwf	(??_rand+0)+2,f
u2373:
	movf	(3+(?___lmul)),w
	skipnc
	incf	(3+(?___lmul)),w
	addwf	(??_rand+0)+3,f
	movf	3+(??_rand+0)+0,w
	movwf	(_randx+3)
	movf	2+(??_rand+0)+0,w
	movwf	(_randx+2)
	movf	1+(??_rand+0)+0,w
	movwf	(_randx+1)
	movf	0+(??_rand+0)+0,w
	movwf	(_randx)

	movf	((_randx)),w
	movwf	(??_rand+4)+0
	movf	((_randx+1)),w
	movwf	((??_rand+4)+0+1)
	movf	((_randx+2)),w
	movwf	((??_rand+4)+0+2)
	movf	((_randx+3)),w
	movwf	((??_rand+4)+0+3)
	movlw	010h
	movwf	(??_rand+8)+0
u2385:
	rlf	(??_rand+4)+3,w
	rrf	(??_rand+4)+3,f
	rrf	(??_rand+4)+2,f
	rrf	(??_rand+4)+1,f
	rrf	(??_rand+4)+0,f
u2380:
	decfsz	(??_rand+8)+0,f
	goto	u2385
	movlw	low(07FFFh)
	andwf	0+(??_rand+4)+0,w
	movwf	(?_rand)
	movlw	high(07FFFh)
	andwf	1+(??_rand+4)+0,w
	movwf	1+(?_rand)
	goto	l1400
	
l2823:	
	line	18
	
l1400:	
	return
	opt stack 0
GLOBAL	__end_of_rand
	__end_of_rand:
;; =============== function _rand ends ============

	signat	_rand,90
	global	___lmul
psect	text213,local,class=CODE,delta=2
global __ptext213
__ptext213:

;; *************** function ___lmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[COMMON] unsigned long 
;;  multiplicand    4    4[COMMON] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    9[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        13       0       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_rand
;; This function uses a non-reentrant model
;;
psect	text213
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lmul.c"
	line	3
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
	opt	stack 5
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	4
	
l2805:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l2807
	line	6
	
l1484:	
	line	7
	
l2807:	
	btfss	(___lmul@multiplier),(0)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2811
u2310:
	line	8
	
l2809:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2321
	addwf	(___lmul@product+1),f
u2321:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2322
	addwf	(___lmul@product+2),f
u2322:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u2323
	addwf	(___lmul@product+3),f
u2323:

	goto	l2811
	
l1485:	
	line	9
	
l2811:	
	movlw	01h
	movwf	(??___lmul+0)+0
u2335:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u2335
	line	10
	
l2813:	
	movlw	01h
u2345:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u2345

	line	11
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l2807
u2350:
	goto	l2815
	
l1486:	
	line	12
	
l2815:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l1487
	
l2817:	
	line	13
	
l1487:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
;; =============== function ___lmul ends ============

	signat	___lmul,8316
	global	___lwmod
psect	text214,local,class=CODE,delta=2
global __ptext214
__ptext214:

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] unsigned int 
;;  dividend        2    2[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Random_num
;; This function uses a non-reentrant model
;;
psect	text214
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwmod.c"
	line	5
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
	opt	stack 6
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	8
	
l2783:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l2801
u2250:
	line	9
	
l2785:	
	clrf	(___lwmod@counter)
	bsf	status,0
	rlf	(___lwmod@counter),f
	line	10
	goto	l2791
	
l1427:	
	line	11
	
l2787:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2265
	line	12
	
l2789:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l2791
	line	13
	
l1426:	
	line	10
	
l2791:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2787
u2270:
	goto	l2793
	
l1428:	
	goto	l2793
	line	14
	
l1429:	
	line	15
	
l2793:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u2285
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u2285:
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2797
u2280:
	line	16
	
l2795:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l2797
	
l1430:	
	line	17
	
l2797:	
	movlw	01h
	
u2295:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u2295
	line	18
	
l2799:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2793
u2300:
	goto	l2801
	
l1431:	
	goto	l2801
	line	19
	
l1425:	
	line	20
	
l2801:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l1432
	
l2803:	
	line	21
	
l1432:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
;; =============== function ___lwmod ends ============

	signat	___lwmod,8314
	global	_srand
psect	text215,local,class=CODE,delta=2
global __ptext215
__ptext215:

;; *************** function _srand *****************
;; Defined at:
;;		line 8 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\rand.c"
;; Parameters:    Size  Location     Type
;;  x               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
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
;;		_rand
;; This function uses a non-reentrant model
;;
psect	text215
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\rand.c"
	line	8
	global	__size_of_srand
	__size_of_srand	equ	__end_of_srand-_srand
	
_srand:	
	opt	stack 5
; Regs used in _srand: [wreg+status,2+status,0]
	line	9
	
l2779:	
	movf	(srand@x),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_randx)
	movf	(srand@x+1),w
	movwf	((_randx))+1
	clrf	2+((_randx))
	clrf	3+((_randx))
	line	10
	
l2781:	
	clrf	(_randf)
	bsf	status,0
	rlf	(_randf),f
	line	11
	
l1396:	
	return
	opt stack 0
GLOBAL	__end_of_srand
	__end_of_srand:
;; =============== function _srand ends ============

	signat	_srand,4216
	global	_Seg_Display
psect	text216,local,class=CODE,delta=2
global __ptext216
__ptext216:

;; *************** function _Seg_Display *****************
;; Defined at:
;;		line 22 in file "C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Seg7_lib.h"
;; Parameters:    Size  Location     Type
;;  num             2    5[BANK0 ] int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text216
	file	"C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Seg7_lib.h"
	line	22
	global	__size_of_Seg_Display
	__size_of_Seg_Display	equ	__end_of_Seg_Display-_Seg_Display
	
_Seg_Display:	
	opt	stack 7
; Regs used in _Seg_Display: [wreg-fsr0h+status,2+status,0]
	line	23
	
l2747:	
;Seg7_lib.h: 23: switch(num){
	goto	l2773
	line	25
;Seg7_lib.h: 25: case 0x00:
	
l693:	
	line	26
	
l2749:	
;Seg7_lib.h: 26: PORTC = 0b01000000;
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	27
;Seg7_lib.h: 27: break;
	goto	l706
	line	29
;Seg7_lib.h: 29: case 0x01:
	
l695:	
	line	30
	
l2751:	
;Seg7_lib.h: 30: PORTC = 0b01111001;
	movlw	(079h)
	movwf	(7)	;volatile
	line	31
;Seg7_lib.h: 31: break;
	goto	l706
	line	33
;Seg7_lib.h: 33: case 0x02:
	
l696:	
	line	34
	
l2753:	
;Seg7_lib.h: 34: PORTC = 0b00100100;
	movlw	(024h)
	movwf	(7)	;volatile
	line	35
;Seg7_lib.h: 35: break;
	goto	l706
	line	37
;Seg7_lib.h: 37: case 0x03:
	
l697:	
	line	38
	
l2755:	
;Seg7_lib.h: 38: PORTC = 0b00110000;
	movlw	(030h)
	movwf	(7)	;volatile
	line	39
;Seg7_lib.h: 39: break;
	goto	l706
	line	41
;Seg7_lib.h: 41: case 0x04:
	
l698:	
	line	42
	
l2757:	
;Seg7_lib.h: 42: PORTC = 0b00011001;
	movlw	(019h)
	movwf	(7)	;volatile
	line	43
;Seg7_lib.h: 43: break;
	goto	l706
	line	45
;Seg7_lib.h: 45: case 0x05:
	
l699:	
	line	46
	
l2759:	
;Seg7_lib.h: 46: PORTC = 0b00010010;
	movlw	(012h)
	movwf	(7)	;volatile
	line	47
;Seg7_lib.h: 47: break;
	goto	l706
	line	49
;Seg7_lib.h: 49: case 0x06:
	
l700:	
	line	50
	
l2761:	
;Seg7_lib.h: 50: PORTC = 0b00000010;
	movlw	(02h)
	movwf	(7)	;volatile
	line	51
;Seg7_lib.h: 51: break;
	goto	l706
	line	53
;Seg7_lib.h: 53: case 0x07:
	
l701:	
	line	54
	
l2763:	
;Seg7_lib.h: 54: PORTC = 0b01111000;
	movlw	(078h)
	movwf	(7)	;volatile
	line	55
;Seg7_lib.h: 55: break;
	goto	l706
	line	57
;Seg7_lib.h: 57: case 0x08:
	
l702:	
	line	58
	
l2765:	
;Seg7_lib.h: 58: PORTC = 0b00000000;
	clrf	(7)	;volatile
	line	59
;Seg7_lib.h: 59: break;
	goto	l706
	line	61
;Seg7_lib.h: 61: case 0x09:
	
l703:	
	line	62
	
l2767:	
;Seg7_lib.h: 62: PORTC = 0b00010000;
	movlw	(010h)
	movwf	(7)	;volatile
	line	63
;Seg7_lib.h: 63: break;
	goto	l706
	line	65
;Seg7_lib.h: 65: case 0x0A:
	
l704:	
	line	66
	
l2769:	
;Seg7_lib.h: 66: PORTC = 0b00001000;
	movlw	(08h)
	movwf	(7)	;volatile
	line	67
;Seg7_lib.h: 67: break;
	goto	l706
	line	69
;Seg7_lib.h: 69: default:
	
l705:	
	line	70
;Seg7_lib.h: 70: break;
	goto	l706
	line	71
	
l2771:	
;Seg7_lib.h: 71: }
	goto	l706
	line	23
	
l692:	
	
l2773:	
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

	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf (Seg_Display@num+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2857
	goto	l706
	opt asmopt_on
	
l2857:	
; Switch size 1, requested type "space"
; Number of cases is 11, Range of values is 0 to 10
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           34    18 (average)
; direct_byte           41     8 (fixed)
; jumptable            260     6 (fixed)
; rangetable            15     6 (fixed)
; spacedrange           28     9 (fixed)
; locatedrange          11     3 (fixed)
;	Chosen strategy is simple_byte

	movf (Seg_Display@num),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l2749
	xorlw	1^0	; case 1
	skipnz
	goto	l2751
	xorlw	2^1	; case 2
	skipnz
	goto	l2753
	xorlw	3^2	; case 3
	skipnz
	goto	l2755
	xorlw	4^3	; case 4
	skipnz
	goto	l2757
	xorlw	5^4	; case 5
	skipnz
	goto	l2759
	xorlw	6^5	; case 6
	skipnz
	goto	l2761
	xorlw	7^6	; case 7
	skipnz
	goto	l2763
	xorlw	8^7	; case 8
	skipnz
	goto	l2765
	xorlw	9^8	; case 9
	skipnz
	goto	l2767
	xorlw	10^9	; case 10
	skipnz
	goto	l2769
	goto	l706
	opt asmopt_on

	line	71
	
l694:	
	line	72
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Display
	__end_of_Seg_Display:
;; =============== function _Seg_Display ends ============

	signat	_Seg_Display,4216
	global	_Seg_Init
psect	text217,local,class=CODE,delta=2
global __ptext217
__ptext217:

;; *************** function _Seg_Init *****************
;; Defined at:
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Seg7_lib.h"
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
psect	text217
	file	"C:\Users\www\Desktop\PIC16F877A\RANDOM_NUMBERS\Seg7_lib.h"
	line	11
	global	__size_of_Seg_Init
	__size_of_Seg_Init	equ	__end_of_Seg_Init-_Seg_Init
	
_Seg_Init:	
	opt	stack 7
; Regs used in _Seg_Init: []
	line	12
	
l1801:	
;Seg7_lib.h: 12: TRISC0 = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1080/8)^080h,(1080)&7
	line	13
;Seg7_lib.h: 13: TRISC1 = 0x00;
	bcf	(1081/8)^080h,(1081)&7
	line	14
;Seg7_lib.h: 14: TRISC2 = 0x00;
	bcf	(1082/8)^080h,(1082)&7
	line	15
;Seg7_lib.h: 15: TRISC3 = 0x00;
	bcf	(1083/8)^080h,(1083)&7
	line	16
;Seg7_lib.h: 16: TRISC4 = 0x00;
	bcf	(1084/8)^080h,(1084)&7
	line	17
;Seg7_lib.h: 17: TRISC5 = 0x00;
	bcf	(1085/8)^080h,(1085)&7
	line	18
;Seg7_lib.h: 18: TRISC6 = 0x00;
	bcf	(1086/8)^080h,(1086)&7
	line	19
;Seg7_lib.h: 19: TRISC7 = 0x00;
	bcf	(1087/8)^080h,(1087)&7
	line	20
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_Seg_Init
	__end_of_Seg_Init:
;; =============== function _Seg_Init ends ============

	signat	_Seg_Init,88
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
