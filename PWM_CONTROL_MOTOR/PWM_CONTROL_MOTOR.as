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
	FNCALL	_main,_PWM_SETUP
	FNCALL	_main,_PWM1_DUTY
	FNCALL	_PWM_SETUP,_PWM1_INITIALIZE
	FNCALL	_PWM_SETUP,_PWM2_INITIALIZE
	FNCALL	_PWM_SETUP,_PWM1_DUTY
	FNCALL	_PWM_SETUP,_PWM2_DUTY
	FNCALL	_PWM_SETUP,_PWM1_START
	FNCALL	_PWM_SETUP,_PWM2_START
	FNCALL	_PWM2_DUTY,___lwtoft
	FNCALL	_PWM2_DUTY,___ftdiv
	FNCALL	_PWM2_DUTY,_PWM_MAX_DUTY
	FNCALL	_PWM2_DUTY,___awtoft
	FNCALL	_PWM2_DUTY,___ftmul
	FNCALL	_PWM2_DUTY,___fttol
	FNCALL	_PWM1_DUTY,___lwtoft
	FNCALL	_PWM1_DUTY,___ftdiv
	FNCALL	_PWM1_DUTY,_PWM_MAX_DUTY
	FNCALL	_PWM1_DUTY,___awtoft
	FNCALL	_PWM1_DUTY,___ftmul
	FNCALL	_PWM1_DUTY,___fttol
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	_PWM2_INITIALIZE,___aldiv
	FNCALL	_PWM1_INITIALIZE,___aldiv
	FNCALL	_PWM_MAX_DUTY,___aldiv
	FNROOT	_main
	global	_CCPR1L
psect	text411,local,class=CODE,delta=2
global __ptext411
__ptext411:
_CCPR1L	set	21
	global	_CCPR2L
_CCPR2L	set	27
	global	_CARRY
_CARRY	set	24
	global	_CCP1M2
_CCP1M2	set	186
	global	_CCP1M3
_CCP1M3	set	187
	global	_CCP1X
_CCP1X	set	189
	global	_CCP1Y
_CCP1Y	set	188
	global	_CCP2M2
_CCP2M2	set	234
	global	_CCP2M3
_CCP2M3	set	235
	global	_CCP2X
_CCP2X	set	237
	global	_CCP2Y
_CCP2Y	set	236
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_T2CKPS0
_T2CKPS0	set	144
	global	_T2CKPS1
_T2CKPS1	set	145
	global	_TMR2ON
_TMR2ON	set	146
	global	_PR2
_PR2	set	146
	global	_TRISB0
_TRISB0	set	1072
	global	_TRISB1
_TRISB1	set	1073
	global	_TRISC1
_TRISC1	set	1081
	global	_TRISC2
_TRISC2	set	1082
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
	global	_Frequency
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_Frequency:
       ds      4

	file	"PWM_CONTROL_MOTOR.as"
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
	global	?_PWM1_START
?_PWM1_START:	; 0 bytes @ 0x0
	global	??_PWM1_START
??_PWM1_START:	; 0 bytes @ 0x0
	global	?_PWM2_START
?_PWM2_START:	; 0 bytes @ 0x0
	global	??_PWM2_START
??_PWM2_START:	; 0 bytes @ 0x0
	global	?_PWM_SETUP
?_PWM_SETUP:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___aldiv
?___aldiv:	; 4 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	global	___aldiv@divisor
___aldiv@divisor:	; 4 bytes @ 0x0
	ds	3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___aldiv@dividend
___aldiv@dividend:	; 4 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	3
	global	??___aldiv
??___aldiv:	; 0 bytes @ 0x8
	ds	1
	global	??_PWM1_INITIALIZE
??_PWM1_INITIALIZE:	; 0 bytes @ 0x9
	global	??_PWM2_INITIALIZE
??_PWM2_INITIALIZE:	; 0 bytes @ 0x9
	global	??___fttol
??___fttol:	; 0 bytes @ 0x9
	ds	4
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
	global	??_PWM_SETUP
??_PWM_SETUP:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___aldiv@counter
___aldiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___aldiv@sign
___aldiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___aldiv@quotient
___aldiv@quotient:	; 4 bytes @ 0x2
	ds	4
	global	?_PWM1_INITIALIZE
?_PWM1_INITIALIZE:	; 0 bytes @ 0x6
	global	?_PWM2_INITIALIZE
?_PWM2_INITIALIZE:	; 0 bytes @ 0x6
	global	?___fttol
?___fttol:	; 4 bytes @ 0x6
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x6
	global	PWM1_INITIALIZE@frequency
PWM1_INITIALIZE@frequency:	; 4 bytes @ 0x6
	global	PWM2_INITIALIZE@frequency
PWM2_INITIALIZE@frequency:	; 4 bytes @ 0x6
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0xA
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0xB
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xF
	ds	1
	global	?_PWM_MAX_DUTY
?_PWM_MAX_DUTY:	; 2 bytes @ 0x10
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x10
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x10
	ds	2
	global	??_PWM_MAX_DUTY
??_PWM_MAX_DUTY:	; 0 bytes @ 0x12
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x13
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x13
	ds	3
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x16
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x16
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0x16
	ds	3
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x19
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x19
	ds	4
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x1D
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x1E
	ds	3
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x21
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x22
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x23
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x23
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x26
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x29
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x2D
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x2E
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x31
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x32
	ds	1
	global	?_PWM1_DUTY
?_PWM1_DUTY:	; 0 bytes @ 0x33
	global	?_PWM2_DUTY
?_PWM2_DUTY:	; 0 bytes @ 0x33
	global	PWM1_DUTY@duty
PWM1_DUTY@duty:	; 2 bytes @ 0x33
	global	PWM2_DUTY@duty
PWM2_DUTY@duty:	; 2 bytes @ 0x33
	ds	2
	global	??_PWM1_DUTY
??_PWM1_DUTY:	; 0 bytes @ 0x35
	global	??_PWM2_DUTY
??_PWM2_DUTY:	; 0 bytes @ 0x35
	ds	2
	global	_PWM1_DUTY$1239
_PWM1_DUTY$1239:	; 1 bytes @ 0x37
	global	_PWM2_DUTY$1243
_PWM2_DUTY$1243:	; 1 bytes @ 0x37
	ds	1
	global	_PWM1_DUTY$1240
_PWM1_DUTY$1240:	; 1 bytes @ 0x38
	global	_PWM2_DUTY$1244
_PWM2_DUTY$1244:	; 1 bytes @ 0x38
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x39
	ds	3
	global	main@i
main@i:	; 2 bytes @ 0x3C
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 4 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     62      66
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?_PWM_MAX_DUTY	int  size(1) Largest target is 4
;;		 -> Frequency(BANK0[4]), 
;;
;; ?___aldiv	long  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _PWM2_DUTY->___lwtoft
;;   _PWM2_DUTY->___awtoft
;;   _PWM1_DUTY->___lwtoft
;;   _PWM1_DUTY->___awtoft
;;   ___lwtoft->___fttol
;;   ___awtoft->___fttol
;;   ___ftmul->___lwtoft
;;   ___ftmul->___awtoft
;;   ___ftdiv->___lwtoft
;;   _PWM2_INITIALIZE->___aldiv
;;   _PWM1_INITIALIZE->___aldiv
;;   _PWM_MAX_DUTY->___fttol
;;   ___fttol->___aldiv
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_PWM1_DUTY
;;   _PWM_SETUP->_PWM1_DUTY
;;   _PWM_SETUP->_PWM2_DUTY
;;   _PWM2_DUTY->___ftmul
;;   _PWM1_DUTY->___ftmul
;;   ___lwtoft->___fttol
;;   ___awtoft->_PWM_MAX_DUTY
;;   ___ftmul->___ftdiv
;;   ___ftdiv->___lwtoft
;;   _PWM2_INITIALIZE->___aldiv
;;   _PWM1_INITIALIZE->___aldiv
;;   _PWM_MAX_DUTY->___fttol
;;   ___fttol->___aldiv
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
;; (0) _main                                                 5     5      0    7555
;;                                             57 BANK0      5     5      0
;;                          _PWM_SETUP
;;                          _PWM1_DUTY
;; ---------------------------------------------------------------------------------
;; (1) _PWM_SETUP                                            0     0      0    5176
;;                    _PWM1_INITIALIZE
;;                    _PWM2_INITIALIZE
;;                          _PWM1_DUTY
;;                          _PWM2_DUTY
;;                         _PWM1_START
;;                         _PWM2_START
;; ---------------------------------------------------------------------------------
;; (2) _PWM2_DUTY                                            6     4      2    2266
;;                                             51 BANK0      6     4      2
;;                           ___lwtoft
;;                            ___ftdiv
;;                       _PWM_MAX_DUTY
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _PWM1_DUTY                                            6     4      2    2266
;;                                             51 BANK0      6     4      2
;;                           ___lwtoft
;;                            ___ftdiv
;;                       _PWM_MAX_DUTY
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     231
;;                                             13 COMMON     1     1      0
;;                                             16 BANK0      3     0      3
;;                           ___ftpack
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             13 COMMON     1     1      0
;;                                             22 BANK0      5     2      3
;;                           ___ftpack
;;                       _PWM_MAX_DUTY (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             35 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftdiv (ARG)
;;                           ___lwtoft (ARG)
;;                           ___awtoft (ARG)
;;                       _PWM_MAX_DUTY (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftdiv                                             16    10      6     489
;;                                             19 BANK0     16    10      6
;;                           ___ftpack
;;                           ___lwtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _PWM2_INITIALIZE                                      8     4      4     322
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0      4     0      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (2) _PWM1_INITIALIZE                                      8     4      4     322
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0      4     0      4
;;                            ___aldiv
;; ---------------------------------------------------------------------------------
;; (2) _PWM_MAX_DUTY                                         6     4      2     300
;;                                             16 BANK0      6     4      2
;;                            ___aldiv
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___aldiv                                             15     7      8     300
;;                                              0 COMMON     9     1      8
;;                                              0 BANK0      6     6      0
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              9 COMMON     4     4      0
;;                                              6 BANK0     10     6      4
;;                           ___ftpack (ARG)
;;                            ___aldiv (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) _PWM2_START                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; (2) _PWM1_START                                           0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _PWM_SETUP
;;     _PWM1_INITIALIZE
;;       ___aldiv
;;     _PWM2_INITIALIZE
;;       ___aldiv
;;     _PWM1_DUTY
;;       ___lwtoft
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftdiv
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_MAX_DUTY
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft
;;         ___ftpack
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           _PWM_MAX_DUTY (ARG)
;;             ___aldiv
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM2_DUTY
;;       ___lwtoft
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftdiv
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_MAX_DUTY
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft
;;         ___ftpack
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___ftmul
;;         ___ftpack
;;         ___ftdiv (ARG)
;;           ___ftpack
;;           ___lwtoft (ARG)
;;             ___ftpack
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           _PWM_MAX_DUTY (ARG)
;;             ___aldiv
;;             ___fttol (ARG)
;;               ___ftpack (ARG)
;;               ___aldiv (ARG)
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM1_START
;;     _PWM2_START
;;   _PWM1_DUTY
;;     ___lwtoft
;;       ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___ftdiv
;;       ___ftpack
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     _PWM_MAX_DUTY
;;       ___aldiv
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___awtoft
;;       ___ftpack
;;       _PWM_MAX_DUTY (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftdiv (ARG)
;;         ___ftpack
;;         ___lwtoft (ARG)
;;           ___ftpack
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         _PWM_MAX_DUTY (ARG)
;;           ___aldiv
;;           ___fttol (ARG)
;;             ___ftpack (ARG)
;;             ___aldiv (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       _PWM_MAX_DUTY (ARG)
;;         ___aldiv
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___aldiv (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___aldiv (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___aldiv (ARG)
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
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0      50       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     3E      42       5       82.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      54      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 7 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   60[BANK0 ] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       5       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_PWM_SETUP
;;		_PWM1_DUTY
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\Main.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	8
	
l3371:	
;Main.c: 8: unsigned int i = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	line	9
	
l3373:	
;Main.c: 9: PWM_SETUP();
	fcall	_PWM_SETUP
	line	10
	
l3375:	
;Main.c: 10: TRISB0 =0x01;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1072/8)^080h,(1072)&7
	line	11
	
l3377:	
;Main.c: 11: TRISB1 = 0x01;
	bsf	(1073/8)^080h,(1073)&7
	goto	l3379
	line	12
;Main.c: 12: while(0x01){
	
l729:	
	line	13
	
l3379:	
;Main.c: 13: if((RB0 = 0x00)==0x00 && i < 1000){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	btfsc	(48/8),(48)&7
	goto	u3371
	goto	u3370
u3371:
	goto	l3385
u3370:
	
l3381:	
	movlw	high(03E8h)
	subwf	(main@i+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(main@i),w
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3385
u3380:
	line	14
	
l3383:	
;Main.c: 14: i=i+0x0A;
	movf	(main@i),w
	addlw	low(0Ah)
	movwf	(main@i)
	movf	(main@i+1),w
	skipnc
	addlw	1
	addlw	high(0Ah)
	movwf	1+(main@i)
	goto	l3385
	line	15
	
l730:	
	line	16
	
l3385:	
;Main.c: 15: }
;Main.c: 16: if((RB1 = 0x00)==0x00 && i >0x00){
	bcf	(49/8),(49)&7
	btfsc	(49/8),(49)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l3391
u3390:
	
l3387:	
	movf	(main@i+1),w
	iorwf	(main@i),w
	skipnz
	goto	u3401
	goto	u3400
u3401:
	goto	l3391
u3400:
	line	17
	
l3389:	
;Main.c: 17: i=i-0x0A;
	movf	(main@i),w
	addlw	low(0FFF6h)
	movwf	(main@i)
	movf	(main@i+1),w
	skipnc
	addlw	1
	addlw	high(0FFF6h)
	movwf	1+(main@i)
	goto	l3391
	line	18
	
l731:	
	line	19
	
l3391:	
;Main.c: 18: }
;Main.c: 19: PWM1_DUTY(i);
	movf	(main@i+1),w
	clrf	(?_PWM1_DUTY+1)
	addwf	(?_PWM1_DUTY+1)
	movf	(main@i),w
	clrf	(?_PWM1_DUTY)
	addwf	(?_PWM1_DUTY)

	fcall	_PWM1_DUTY
	line	20
	
l3393:	
;Main.c: 20: _delay((unsigned long)((50)*(20000000/4000.0)));
	opt asmopt_off
movlw  2
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3417:
	decfsz	((??_main+0)+0),f
	goto	u3417
	decfsz	((??_main+0)+0+1),f
	goto	u3417
	decfsz	((??_main+0)+0+2),f
	goto	u3417
	nop2
opt asmopt_on

	goto	l3379
	line	21
	
l732:	
	line	12
	goto	l3379
	
l733:	
	line	22
	
l734:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_PWM_SETUP
psect	text412,local,class=CODE,delta=2
global __ptext412
__ptext412:

;; *************** function _PWM_SETUP *****************
;; Defined at:
;;		line 92 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_PWM1_INITIALIZE
;;		_PWM2_INITIALIZE
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;;		_PWM1_START
;;		_PWM2_START
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text412
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	92
	global	__size_of_PWM_SETUP
	__size_of_PWM_SETUP	equ	__end_of_PWM_SETUP-_PWM_SETUP
	
_PWM_SETUP:	
	opt	stack 4
; Regs used in _PWM_SETUP: [wreg+status,2+status,0+pclath+cstack]
	line	93
	
l3365:	
;PWM_lib.h: 93: PWM1_INITIALIZE(5000);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM1_INITIALIZE+3)
	movlw	0
	movwf	(?_PWM1_INITIALIZE+2)
	movlw	013h
	movwf	(?_PWM1_INITIALIZE+1)
	movlw	088h
	movwf	(?_PWM1_INITIALIZE)

	fcall	_PWM1_INITIALIZE
	line	94
;PWM_lib.h: 94: PWM2_INITIALIZE(5000);
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM2_INITIALIZE+3)
	movlw	0
	movwf	(?_PWM2_INITIALIZE+2)
	movlw	013h
	movwf	(?_PWM2_INITIALIZE+1)
	movlw	088h
	movwf	(?_PWM2_INITIALIZE)

	fcall	_PWM2_INITIALIZE
	line	95
;PWM_lib.h: 95: PWM1_DUTY(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM1_DUTY)
	movlw	high(0)
	movwf	((?_PWM1_DUTY))+1
	fcall	_PWM1_DUTY
	line	96
;PWM_lib.h: 96: PWM2_DUTY(0);
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_PWM2_DUTY)
	movlw	high(0)
	movwf	((?_PWM2_DUTY))+1
	fcall	_PWM2_DUTY
	line	97
	
l3367:	
;PWM_lib.h: 97: PWM1_START();
	fcall	_PWM1_START
	line	98
	
l3369:	
;PWM_lib.h: 98: PWM2_START();
	fcall	_PWM2_START
	line	99
	
l726:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_SETUP
	__end_of_PWM_SETUP:
;; =============== function _PWM_SETUP ends ============

	signat	_PWM_SETUP,88
	global	_PWM2_DUTY
psect	text413,local,class=CODE,delta=2
global __ptext413
__ptext413:

;; *************** function _PWM2_DUTY *****************
;; Defined at:
;;		line 34 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  duty            2   51[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwtoft
;;		___ftdiv
;;		_PWM_MAX_DUTY
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text413
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	34
	global	__size_of_PWM2_DUTY
	__size_of_PWM2_DUTY	equ	__end_of_PWM2_DUTY-_PWM2_DUTY
	
_PWM2_DUTY:	
	opt	stack 4
; Regs used in _PWM2_DUTY: [wreg+status,2+status,0+pclath+cstack]
	line	35
	
l3345:	
;PWM_lib.h: 35: if(duty<1024)
	movlw	high(0400h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(PWM2_DUTY@duty+1),w
	movlw	low(0400h)
	skipnz
	subwf	(PWM2_DUTY@duty),w
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l711
u3330:
	line	37
	
l3347:	
;PWM_lib.h: 36: {
;PWM_lib.h: 37: duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
	movf	(PWM2_DUTY@duty+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(PWM2_DUTY@duty),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	_PWM_MAX_DUTY
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(PWM2_DUTY@duty+1)
	addwf	(PWM2_DUTY@duty+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(PWM2_DUTY@duty)
	addwf	(PWM2_DUTY@duty)

	line	38
	
l3349:	
;PWM_lib.h: 38: CCP2X = duty && 2;
	clrf	(_PWM2_DUTY$1243)
	
l3351:	
	movf	(PWM2_DUTY@duty+1),w
	iorwf	(PWM2_DUTY@duty),w
	skipnz
	goto	u3341
	goto	u3340
u3341:
	goto	l3355
u3340:
	
l3353:	
	clrf	(_PWM2_DUTY$1243)
	bsf	status,0
	rlf	(_PWM2_DUTY$1243),f
	goto	l3355
	
l708:	
	
l3355:	
	movf	(_PWM2_DUTY$1243),w
	skipz
	bsf	(237/8),(237)&7
	skipnz
	bcf	(237/8),(237)&7
	line	39
	
l3357:	
;PWM_lib.h: 39: CCP2Y = duty && 1;
	clrf	(_PWM2_DUTY$1244)
	
l3359:	
	movf	(PWM2_DUTY@duty+1),w
	iorwf	(PWM2_DUTY@duty),w
	skipnz
	goto	u3351
	goto	u3350
u3351:
	goto	l3363
u3350:
	
l3361:	
	clrf	(_PWM2_DUTY$1244)
	bsf	status,0
	rlf	(_PWM2_DUTY$1244),f
	goto	l3363
	
l710:	
	
l3363:	
	movf	(_PWM2_DUTY$1244),w
	skipz
	bsf	(236/8),(236)&7
	skipnz
	bcf	(236/8),(236)&7
	line	40
;PWM_lib.h: 40: CCPR2L = duty>>2;
	movf	(PWM2_DUTY@duty+1),w
	movwf	(??_PWM2_DUTY+0)+0+1
	movf	(PWM2_DUTY@duty),w
	movwf	(??_PWM2_DUTY+0)+0
	movlw	02h
u3365:
	clrc
	rrf	(??_PWM2_DUTY+0)+1,f
	rrf	(??_PWM2_DUTY+0)+0,f
	addlw	-1
	skipz
	goto	u3365
	movf	0+(??_PWM2_DUTY+0)+0,w
	movwf	(27)	;volatile
	goto	l711
	line	41
	
l706:	
	line	42
	
l711:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_DUTY
	__end_of_PWM2_DUTY:
;; =============== function _PWM2_DUTY ends ============

	signat	_PWM2_DUTY,4216
	global	_PWM1_DUTY
psect	text414,local,class=CODE,delta=2
global __ptext414
__ptext414:

;; *************** function _PWM1_DUTY *****************
;; Defined at:
;;		line 23 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  duty            2   51[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lwtoft
;;		___ftdiv
;;		_PWM_MAX_DUTY
;;		___awtoft
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		_PWM_SETUP
;;		_main
;; This function uses a non-reentrant model
;;
psect	text414
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	23
	global	__size_of_PWM1_DUTY
	__size_of_PWM1_DUTY	equ	__end_of_PWM1_DUTY-_PWM1_DUTY
	
_PWM1_DUTY:	
	opt	stack 5
; Regs used in _PWM1_DUTY: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l3325:	
;PWM_lib.h: 24: if(duty<1024)
	movlw	high(0400h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(PWM1_DUTY@duty+1),w
	movlw	low(0400h)
	skipnz
	subwf	(PWM1_DUTY@duty),w
	skipnc
	goto	u3291
	goto	u3290
u3291:
	goto	l703
u3290:
	line	26
	
l3327:	
;PWM_lib.h: 25: {
;PWM_lib.h: 26: duty = (unsigned int)(((float)duty/1023)*PWM_MAX_DUTY());
	movf	(PWM1_DUTY@duty+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(PWM1_DUTY@duty),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	0+(?___ftdiv)+03h
	movf	(1+(?___lwtoft)),w
	movwf	1+(?___ftdiv)+03h
	movf	(2+(?___lwtoft)),w
	movwf	2+(?___ftdiv)+03h
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftdiv)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftdiv)),w
	movwf	2+(?___ftmul)+03h
	fcall	_PWM_MAX_DUTY
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(0+(?_PWM_MAX_DUTY)),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftmul)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(PWM1_DUTY@duty+1)
	addwf	(PWM1_DUTY@duty+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(PWM1_DUTY@duty)
	addwf	(PWM1_DUTY@duty)

	line	27
	
l3329:	
;PWM_lib.h: 27: CCP1X = duty && 2;
	clrf	(_PWM1_DUTY$1239)
	
l3331:	
	movf	(PWM1_DUTY@duty+1),w
	iorwf	(PWM1_DUTY@duty),w
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l3335
u3300:
	
l3333:	
	clrf	(_PWM1_DUTY$1239)
	bsf	status,0
	rlf	(_PWM1_DUTY$1239),f
	goto	l3335
	
l700:	
	
l3335:	
	movf	(_PWM1_DUTY$1239),w
	skipz
	bsf	(189/8),(189)&7
	skipnz
	bcf	(189/8),(189)&7
	line	28
	
l3337:	
;PWM_lib.h: 28: CCP1Y = duty && 1;
	clrf	(_PWM1_DUTY$1240)
	
l3339:	
	movf	(PWM1_DUTY@duty+1),w
	iorwf	(PWM1_DUTY@duty),w
	skipnz
	goto	u3311
	goto	u3310
u3311:
	goto	l3343
u3310:
	
l3341:	
	clrf	(_PWM1_DUTY$1240)
	bsf	status,0
	rlf	(_PWM1_DUTY$1240),f
	goto	l3343
	
l702:	
	
l3343:	
	movf	(_PWM1_DUTY$1240),w
	skipz
	bsf	(188/8),(188)&7
	skipnz
	bcf	(188/8),(188)&7
	line	29
;PWM_lib.h: 29: CCPR1L = duty>>2;
	movf	(PWM1_DUTY@duty+1),w
	movwf	(??_PWM1_DUTY+0)+0+1
	movf	(PWM1_DUTY@duty),w
	movwf	(??_PWM1_DUTY+0)+0
	movlw	02h
u3325:
	clrc
	rrf	(??_PWM1_DUTY+0)+1,f
	rrf	(??_PWM1_DUTY+0)+0,f
	addlw	-1
	skipz
	goto	u3325
	movf	0+(??_PWM1_DUTY+0)+0,w
	movwf	(21)	;volatile
	goto	l703
	line	30
	
l698:	
	line	31
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_DUTY
	__end_of_PWM1_DUTY:
;; =============== function _PWM1_DUTY ends ============

	signat	_PWM1_DUTY,4216
	global	___lwtoft
psect	text415,local,class=CODE,delta=2
global __ptext415
__ptext415:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   16[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       3       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text415
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l3321:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l1640
	
l3323:	
	line	31
	
l1640:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text416,local,class=CODE,delta=2
global __ptext416
__ptext416:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   22[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   22[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         1       5       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text416
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3313:	
	clrf	(___awtoft@sign)
	line	37
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___awtoft@c+1),7
	goto	u3281
	goto	u3280
u3281:
	goto	l3317
u3280:
	line	38
	
l3315:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l3317
	line	40
	
l1553:	
	line	41
	
l3317:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1554
	
l3319:	
	line	42
	
l1554:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text417,local,class=CODE,delta=2
global __ptext417
__ptext417:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   35[BANK0 ] float 
;;  f2              3   38[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   46[BANK0 ] unsigned um
;;  sign            1   50[BANK0 ] unsigned char 
;;  cntr            1   49[BANK0 ] unsigned char 
;;  exp             1   45[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   35[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text417
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3263:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l3269
u3140:
	line	57
	
l3265:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1516
	
l3267:	
	goto	l1516
	
l1515:	
	line	58
	
l3269:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3151
	goto	u3150
u3151:
	goto	l3275
u3150:
	line	59
	
l3271:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1516
	
l3273:	
	goto	l1516
	
l1517:	
	line	60
	
l3275:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3165:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3160:
	addlw	-1
	skipz
	goto	u3165
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3175:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3170:
	addlw	-1
	skipz
	goto	u3175
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l3277:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3279:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3281:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3283:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l3285:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3287
	line	70
	
l1518:	
	line	71
	
l3287:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3181
	goto	u3180
u3181:
	goto	l3291
u3180:
	line	72
	
l3289:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3191
	addwf	(___ftmul@f3_as_product+1),f
u3191:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3192
	addwf	(___ftmul@f3_as_product+2),f
u3192:

	goto	l3291
	
l1519:	
	line	73
	
l3291:	
	movlw	01h
u3205:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3205

	line	74
	
l3293:	
	movlw	01h
u3215:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3215
	line	75
	
l3295:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3287
u3220:
	goto	l3297
	
l1520:	
	line	76
	
l3297:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3299
	line	77
	
l1521:	
	line	78
	
l3299:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l3303
u3230:
	line	79
	
l3301:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3241
	addwf	(___ftmul@f3_as_product+1),f
u3241:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3242
	addwf	(___ftmul@f3_as_product+2),f
u3242:

	goto	l3303
	
l1522:	
	line	80
	
l3303:	
	movlw	01h
u3255:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3255

	line	81
	
l3305:	
	movlw	01h
u3265:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3265

	line	82
	
l3307:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3271
	goto	u3270
u3271:
	goto	l3299
u3270:
	goto	l3309
	
l1523:	
	line	83
	
l3309:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1516
	
l3311:	
	line	84
	
l1516:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text418,local,class=CODE,delta=2
global __ptext418
__ptext418:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3   19[BANK0 ] float 
;;  f1              3   22[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   30[BANK0 ] float 
;;  sign            1   34[BANK0 ] unsigned char 
;;  exp             1   33[BANK0 ] unsigned char 
;;  cntr            1   29[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   19[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text418
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l3221:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3061
	goto	u3060
u3061:
	goto	l3227
u3060:
	line	56
	
l3223:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1506
	
l3225:	
	goto	l1506
	
l1505:	
	line	57
	
l3227:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l3233
u3070:
	line	58
	
l3229:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1506
	
l3231:	
	goto	l1506
	
l1507:	
	line	59
	
l3233:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l3235:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l3237:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3085:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3080:
	addlw	-1
	skipz
	goto	u3085
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l3239:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3095:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3090:
	addlw	-1
	skipz
	goto	u3095
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l3241:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l3243:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l3245:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l3247
	line	69
	
l1508:	
	line	70
	
l3247:	
	movlw	01h
u3105:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3105
	line	71
	
l3249:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3115
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3115
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3115:
	skipc
	goto	u3111
	goto	u3110
u3111:
	goto	l3255
u3110:
	line	72
	
l3251:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l3253:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l3255
	line	74
	
l1509:	
	line	75
	
l3255:	
	movlw	01h
u3125:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3125
	line	76
	
l3257:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3131
	goto	u3130
u3131:
	goto	l3247
u3130:
	goto	l3259
	
l1510:	
	line	77
	
l3259:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1506
	
l3261:	
	line	78
	
l1506:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	_PWM2_INITIALIZE
psect	text419,local,class=CODE,delta=2
global __ptext419
__ptext419:

;; *************** function _PWM2_INITIALIZE *****************
;; Defined at:
;;		line 17 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  frequency       4    6[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text419
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	17
	global	__size_of_PWM2_INITIALIZE
	__size_of_PWM2_INITIALIZE	equ	__end_of_PWM2_INITIALIZE-_PWM2_INITIALIZE
	
_PWM2_INITIALIZE:	
	opt	stack 5
; Regs used in _PWM2_INITIALIZE: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l3217:	
;PWM_lib.h: 18: PR2 = (20000000/(Frequency*4*16)) - 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Frequency),w
	movwf	(??_PWM2_INITIALIZE+0)+0
	movf	(_Frequency+1),w
	movwf	((??_PWM2_INITIALIZE+0)+0+1)
	movf	(_Frequency+2),w
	movwf	((??_PWM2_INITIALIZE+0)+0+2)
	movf	(_Frequency+3),w
	movwf	((??_PWM2_INITIALIZE+0)+0+3)
	movlw	02h
u3045:
	clrc
	rlf	(??_PWM2_INITIALIZE+0)+0,f
	rlf	(??_PWM2_INITIALIZE+0)+1,f
	rlf	(??_PWM2_INITIALIZE+0)+2,f
	rlf	(??_PWM2_INITIALIZE+0)+3,f
u3040:
	addlw	-1
	skipz
	goto	u3045
	movlw	04h
u3055:
	clrc
	rlf	(??_PWM2_INITIALIZE+0)+0,f
	rlf	(??_PWM2_INITIALIZE+0)+1,f
	rlf	(??_PWM2_INITIALIZE+0)+2,f
	rlf	(??_PWM2_INITIALIZE+0)+3,f
u3050:
	addlw	-1
	skipz
	goto	u3055
	movf	3+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM2_INITIALIZE+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	19
	
l3219:	
;PWM_lib.h: 19: Frequency = frequency;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM2_INITIALIZE@frequency+3),w
	movwf	(_Frequency+3)
	movf	(PWM2_INITIALIZE@frequency+2),w
	movwf	(_Frequency+2)
	movf	(PWM2_INITIALIZE@frequency+1),w
	movwf	(_Frequency+1)
	movf	(PWM2_INITIALIZE@frequency),w
	movwf	(_Frequency)

	line	20
	
l695:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_INITIALIZE
	__end_of_PWM2_INITIALIZE:
;; =============== function _PWM2_INITIALIZE ends ============

	signat	_PWM2_INITIALIZE,4216
	global	_PWM1_INITIALIZE
psect	text420,local,class=CODE,delta=2
global __ptext420
__ptext420:

;; *************** function _PWM1_INITIALIZE *****************
;; Defined at:
;;		line 11 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;  frequency       4    6[BANK0 ] long 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       4       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text420
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	11
	global	__size_of_PWM1_INITIALIZE
	__size_of_PWM1_INITIALIZE	equ	__end_of_PWM1_INITIALIZE-_PWM1_INITIALIZE
	
_PWM1_INITIALIZE:	
	opt	stack 5
; Regs used in _PWM1_INITIALIZE: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l3213:	
;PWM_lib.h: 12: PR2 = (20000000/(Frequency*4*16)) - 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Frequency),w
	movwf	(??_PWM1_INITIALIZE+0)+0
	movf	(_Frequency+1),w
	movwf	((??_PWM1_INITIALIZE+0)+0+1)
	movf	(_Frequency+2),w
	movwf	((??_PWM1_INITIALIZE+0)+0+2)
	movf	(_Frequency+3),w
	movwf	((??_PWM1_INITIALIZE+0)+0+3)
	movlw	02h
u3025:
	clrc
	rlf	(??_PWM1_INITIALIZE+0)+0,f
	rlf	(??_PWM1_INITIALIZE+0)+1,f
	rlf	(??_PWM1_INITIALIZE+0)+2,f
	rlf	(??_PWM1_INITIALIZE+0)+3,f
u3020:
	addlw	-1
	skipz
	goto	u3025
	movlw	04h
u3035:
	clrc
	rlf	(??_PWM1_INITIALIZE+0)+0,f
	rlf	(??_PWM1_INITIALIZE+0)+1,f
	rlf	(??_PWM1_INITIALIZE+0)+2,f
	rlf	(??_PWM1_INITIALIZE+0)+3,f
u3030:
	addlw	-1
	skipz
	goto	u3035
	movf	3+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM1_INITIALIZE+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	0+(((0+(?___aldiv)))),w
	addlw	0FFh
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	13
	
l3215:	
;PWM_lib.h: 13: Frequency = frequency;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(PWM1_INITIALIZE@frequency+3),w
	movwf	(_Frequency+3)
	movf	(PWM1_INITIALIZE@frequency+2),w
	movwf	(_Frequency+2)
	movf	(PWM1_INITIALIZE@frequency+1),w
	movwf	(_Frequency+1)
	movf	(PWM1_INITIALIZE@frequency),w
	movwf	(_Frequency)

	line	14
	
l692:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_INITIALIZE
	__end_of_PWM1_INITIALIZE:
;; =============== function _PWM1_INITIALIZE ends ============

	signat	_PWM1_INITIALIZE,4216
	global	_PWM_MAX_DUTY
psect	text421,local,class=CODE,delta=2
global __ptext421
__ptext421:

;; *************** function _PWM_MAX_DUTY *****************
;; Defined at:
;;		line 6 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2   16[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___aldiv
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text421
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	6
	global	__size_of_PWM_MAX_DUTY
	__size_of_PWM_MAX_DUTY	equ	__end_of_PWM_MAX_DUTY-_PWM_MAX_DUTY
	
_PWM_MAX_DUTY:	
	opt	stack 5
; Regs used in _PWM_MAX_DUTY: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l3209:	
;PWM_lib.h: 7: return(20000000/(Frequency*16);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Frequency),w
	movwf	(??_PWM_MAX_DUTY+0)+0
	movf	(_Frequency+1),w
	movwf	((??_PWM_MAX_DUTY+0)+0+1)
	movf	(_Frequency+2),w
	movwf	((??_PWM_MAX_DUTY+0)+0+2)
	movf	(_Frequency+3),w
	movwf	((??_PWM_MAX_DUTY+0)+0+3)
	movlw	04h
u3015:
	clrc
	rlf	(??_PWM_MAX_DUTY+0)+0,f
	rlf	(??_PWM_MAX_DUTY+0)+1,f
	rlf	(??_PWM_MAX_DUTY+0)+2,f
	rlf	(??_PWM_MAX_DUTY+0)+3,f
u3010:
	addlw	-1
	skipz
	goto	u3015
	movf	3+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv+3)
	movf	2+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv+2)
	movf	1+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv+1)
	movf	0+(??_PWM_MAX_DUTY+0)+0,w
	movwf	(?___aldiv)

	movlw	01h
	movwf	3+(?___aldiv)+04h
	movlw	031h
	movwf	2+(?___aldiv)+04h
	movlw	02Dh
	movwf	1+(?___aldiv)+04h
	movlw	0
	movwf	0+(?___aldiv)+04h

	fcall	___aldiv
	movf	1+(((0+(?___aldiv)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_PWM_MAX_DUTY+1)
	addwf	(?_PWM_MAX_DUTY+1)
	movf	0+(((0+(?___aldiv)))),w
	clrf	(?_PWM_MAX_DUTY)
	addwf	(?_PWM_MAX_DUTY)

	goto	l689
	
l3211:	
	line	8
	
l689:	
	return
	opt stack 0
GLOBAL	__end_of_PWM_MAX_DUTY
	__end_of_PWM_MAX_DUTY:
;; =============== function _PWM_MAX_DUTY ends ============

	signat	_PWM_MAX_DUTY,90
	global	___aldiv
psect	text422,local,class=CODE,delta=2
global __ptext422
__ptext422:

;; *************** function ___aldiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    0[COMMON] long 
;;  dividend        4    4[COMMON] long 
;; Auto vars:     Size  Location     Type
;;  quotient        4    2[BANK0 ] long 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         8       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       6       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM_MAX_DUTY
;;		_PWM1_INITIALIZE
;;		_PWM2_INITIALIZE
;; This function uses a non-reentrant model
;;
psect	text422
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\aldiv.c"
	line	5
	global	__size_of___aldiv
	__size_of___aldiv	equ	__end_of___aldiv-___aldiv
	
___aldiv:	
	opt	stack 5
; Regs used in ___aldiv: [wreg+status,2+status,0]
	line	9
	
l3125:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___aldiv@sign)
	line	10
	btfss	(___aldiv@divisor+3),7
	goto	u2851
	goto	u2850
u2851:
	goto	l3131
u2850:
	line	11
	
l3127:	
	comf	(___aldiv@divisor),f
	comf	(___aldiv@divisor+1),f
	comf	(___aldiv@divisor+2),f
	comf	(___aldiv@divisor+3),f
	incf	(___aldiv@divisor),f
	skipnz
	incf	(___aldiv@divisor+1),f
	skipnz
	incf	(___aldiv@divisor+2),f
	skipnz
	incf	(___aldiv@divisor+3),f
	line	12
	
l3129:	
	clrf	(___aldiv@sign)
	bsf	status,0
	rlf	(___aldiv@sign),f
	goto	l3131
	line	13
	
l1612:	
	line	14
	
l3131:	
	btfss	(___aldiv@dividend+3),7
	goto	u2861
	goto	u2860
u2861:
	goto	l3137
u2860:
	line	15
	
l3133:	
	comf	(___aldiv@dividend),f
	comf	(___aldiv@dividend+1),f
	comf	(___aldiv@dividend+2),f
	comf	(___aldiv@dividend+3),f
	incf	(___aldiv@dividend),f
	skipnz
	incf	(___aldiv@dividend+1),f
	skipnz
	incf	(___aldiv@dividend+2),f
	skipnz
	incf	(___aldiv@dividend+3),f
	line	16
	
l3135:	
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	xorwf	(___aldiv@sign),f
	goto	l3137
	line	17
	
l1613:	
	line	18
	
l3137:	
	movlw	0
	movwf	(___aldiv@quotient+3)
	movlw	0
	movwf	(___aldiv@quotient+2)
	movlw	0
	movwf	(___aldiv@quotient+1)
	movlw	0
	movwf	(___aldiv@quotient)

	line	19
	
l3139:	
	movf	(___aldiv@divisor+3),w
	iorwf	(___aldiv@divisor+2),w
	iorwf	(___aldiv@divisor+1),w
	iorwf	(___aldiv@divisor),w
	skipnz
	goto	u2871
	goto	u2870
u2871:
	goto	l3159
u2870:
	line	20
	
l3141:	
	clrf	(___aldiv@counter)
	bsf	status,0
	rlf	(___aldiv@counter),f
	line	21
	goto	l3145
	
l1616:	
	line	22
	
l3143:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2885:
	clrc
	rlf	(___aldiv@divisor),f
	rlf	(___aldiv@divisor+1),f
	rlf	(___aldiv@divisor+2),f
	rlf	(___aldiv@divisor+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2885
	line	23
	movlw	(01h)
	movwf	(??___aldiv+0)+0
	movf	(??___aldiv+0)+0,w
	addwf	(___aldiv@counter),f
	goto	l3145
	line	24
	
l1615:	
	line	21
	
l3145:	
	btfss	(___aldiv@divisor+3),(31)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l3143
u2890:
	goto	l3147
	
l1617:	
	goto	l3147
	line	25
	
l1618:	
	line	26
	
l3147:	
	movlw	01h
	movwf	(??___aldiv+0)+0
u2905:
	clrc
	rlf	(___aldiv@quotient),f
	rlf	(___aldiv@quotient+1),f
	rlf	(___aldiv@quotient+2),f
	rlf	(___aldiv@quotient+3),f
	decfsz	(??___aldiv+0)+0
	goto	u2905
	line	27
	
l3149:	
	movf	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),w
	skipz
	goto	u2915
	movf	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),w
	skipz
	goto	u2915
	movf	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),w
	skipz
	goto	u2915
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),w
u2915:
	skipc
	goto	u2911
	goto	u2910
u2911:
	goto	l3155
u2910:
	line	28
	
l3151:	
	movf	(___aldiv@divisor),w
	subwf	(___aldiv@dividend),f
	movf	(___aldiv@divisor+1),w
	skipc
	incfsz	(___aldiv@divisor+1),w
	subwf	(___aldiv@dividend+1),f
	movf	(___aldiv@divisor+2),w
	skipc
	incfsz	(___aldiv@divisor+2),w
	subwf	(___aldiv@dividend+2),f
	movf	(___aldiv@divisor+3),w
	skipc
	incfsz	(___aldiv@divisor+3),w
	subwf	(___aldiv@dividend+3),f
	line	29
	
l3153:	
	bsf	(___aldiv@quotient)+(0/8),(0)&7
	goto	l3155
	line	30
	
l1619:	
	line	31
	
l3155:	
	movlw	01h
u2925:
	clrc
	rrf	(___aldiv@divisor+3),f
	rrf	(___aldiv@divisor+2),f
	rrf	(___aldiv@divisor+1),f
	rrf	(___aldiv@divisor),f
	addlw	-1
	skipz
	goto	u2925

	line	32
	
l3157:	
	movlw	low(01h)
	subwf	(___aldiv@counter),f
	btfss	status,2
	goto	u2931
	goto	u2930
u2931:
	goto	l3147
u2930:
	goto	l3159
	
l1620:	
	goto	l3159
	line	33
	
l1614:	
	line	34
	
l3159:	
	movf	(___aldiv@sign),w
	skipz
	goto	u2940
	goto	l3163
u2940:
	line	35
	
l3161:	
	comf	(___aldiv@quotient),f
	comf	(___aldiv@quotient+1),f
	comf	(___aldiv@quotient+2),f
	comf	(___aldiv@quotient+3),f
	incf	(___aldiv@quotient),f
	skipnz
	incf	(___aldiv@quotient+1),f
	skipnz
	incf	(___aldiv@quotient+2),f
	skipnz
	incf	(___aldiv@quotient+3),f
	goto	l3163
	
l1621:	
	line	36
	
l3163:	
	movf	(___aldiv@quotient+3),w
	movwf	(?___aldiv+3)
	movf	(___aldiv@quotient+2),w
	movwf	(?___aldiv+2)
	movf	(___aldiv@quotient+1),w
	movwf	(?___aldiv+1)
	movf	(___aldiv@quotient),w
	movwf	(?___aldiv)

	goto	l1622
	
l3165:	
	line	37
	
l1622:	
	return
	opt stack 0
GLOBAL	__end_of___aldiv
	__end_of___aldiv:
;; =============== function ___aldiv ends ============

	signat	___aldiv,8316
	global	___fttol
psect	text423,local,class=CODE,delta=2
global __ptext423
__ptext423:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   11[BANK0 ] unsigned long 
;;  exp1            1   15[BANK0 ] unsigned char 
;;  sign1           1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    6[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      10       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_PWM1_DUTY
;;		_PWM2_DUTY
;; This function uses a non-reentrant model
;;
psect	text423
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3069:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l3075
u2740:
	line	50
	
l3071:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1527
	
l3073:	
	goto	l1527
	
l1526:	
	line	51
	
l3075:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2755:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2750:
	addlw	-1
	skipz
	goto	u2755
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3077:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3079:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3081:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3083:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3085:	
	btfss	(___fttol@exp1),7
	goto	u2761
	goto	u2760
u2761:
	goto	l3095
u2760:
	line	57
	
l3087:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2771
	goto	u2770
u2771:
	goto	l3093
u2770:
	line	58
	
l3089:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1527
	
l3091:	
	goto	l1527
	
l1529:	
	goto	l3093
	line	59
	
l1530:	
	line	60
	
l3093:	
	movlw	01h
u2785:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2785

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2791
	goto	u2790
u2791:
	goto	l3093
u2790:
	goto	l3105
	
l1531:	
	line	62
	goto	l3105
	
l1528:	
	line	63
	
l3095:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l3103
u2800:
	line	64
	
l3097:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1527
	
l3099:	
	goto	l1527
	
l1533:	
	line	65
	goto	l3103
	
l1535:	
	line	66
	
l3101:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2815:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2815
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3103
	line	68
	
l1534:	
	line	65
	
l3103:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l3101
u2820:
	goto	l3105
	
l1536:	
	goto	l3105
	line	69
	
l1532:	
	line	70
	
l3105:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2830
	goto	l3109
u2830:
	line	71
	
l3107:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l3109
	
l1537:	
	line	72
	
l3109:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1527
	
l3111:	
	line	73
	
l1527:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text424,local,class=CODE,delta=2
global __ptext424
__ptext424:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lwtoft
;;		___ftadd
;;		___lbtoft
;;		___abtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text424
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.82\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3033:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2630
	goto	l3037
u2630:
	
l3035:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2641
	goto	u2640
u2641:
	goto	l3043
u2640:
	goto	l3037
	
l1751:	
	line	65
	
l3037:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1752
	
l3039:	
	goto	l1752
	
l1749:	
	line	66
	goto	l3043
	
l1754:	
	line	67
	
l3041:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2655:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2655

	goto	l3043
	line	69
	
l1753:	
	line	66
	
l3043:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l3041
u2660:
	goto	l1756
	
l1755:	
	line	70
	goto	l1756
	
l1757:	
	line	71
	
l3045:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3047:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l3049:	
	movlw	01h
u2675:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2675

	line	74
	
l1756:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2681
	goto	u2680
u2681:
	goto	l3045
u2680:
	goto	l3053
	
l1758:	
	line	75
	goto	l3053
	
l1760:	
	line	76
	
l3051:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2695:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2695
	goto	l3053
	line	78
	
l1759:	
	line	75
	
l3053:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l3051
u2700:
	
l1761:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1762
u2710:
	line	80
	
l3055:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1762:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3057:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2725:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2720:
	addlw	-1
	skipz
	goto	u2725
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3059:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2730
	goto	l1763
u2730:
	line	84
	
l3061:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1763:	
	line	85
	line	86
	
l1752:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_PWM2_START
psect	text425,local,class=CODE,delta=2
global __ptext425
__ptext425:

;; *************** function _PWM2_START *****************
;; Defined at:
;;		line 69 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
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
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text425
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	69
	global	__size_of_PWM2_START
	__size_of_PWM2_START	equ	__end_of_PWM2_START-_PWM2_START
	
_PWM2_START:	
	opt	stack 6
; Regs used in _PWM2_START: []
	line	70
	
l2961:	
;PWM_lib.h: 70: CCP2M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(235/8),(235)&7
	line	71
;PWM_lib.h: 71: CCP2M2 = 1;
	bsf	(234/8),(234)&7
	line	79
;PWM_lib.h: 79: T2CKPS0 = 1;
	bsf	(144/8),(144)&7
	line	80
;PWM_lib.h: 80: T2CKPS1 = 1;
	bsf	(145/8),(145)&7
	line	82
;PWM_lib.h: 82: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	83
;PWM_lib.h: 83: TRISC1 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1081/8)^080h,(1081)&7
	line	84
	
l720:	
	return
	opt stack 0
GLOBAL	__end_of_PWM2_START
	__end_of_PWM2_START:
;; =============== function _PWM2_START ends ============

	signat	_PWM2_START,88
	global	_PWM1_START
psect	text426,local,class=CODE,delta=2
global __ptext426
__ptext426:

;; *************** function _PWM1_START *****************
;; Defined at:
;;		line 45 in file "C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
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
;;		_PWM_SETUP
;; This function uses a non-reentrant model
;;
psect	text426
	file	"C:\Users\www\Desktop\PIC16F877A\PWM_CONTROL_MOTOR\PWM_lib.h"
	line	45
	global	__size_of_PWM1_START
	__size_of_PWM1_START	equ	__end_of_PWM1_START-_PWM1_START
	
_PWM1_START:	
	opt	stack 6
; Regs used in _PWM1_START: []
	line	46
	
l2959:	
;PWM_lib.h: 46: CCP1M3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(187/8),(187)&7
	line	47
;PWM_lib.h: 47: CCP1M2 = 1;
	bsf	(186/8),(186)&7
	line	55
;PWM_lib.h: 55: T2CKPS0 = 1;
	bsf	(144/8),(144)&7
	line	56
;PWM_lib.h: 56: T2CKPS1 = 1;
	bsf	(145/8),(145)&7
	line	58
;PWM_lib.h: 58: TMR2ON = 1;
	bsf	(146/8),(146)&7
	line	59
;PWM_lib.h: 59: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7
	line	60
	
l714:	
	return
	opt stack 0
GLOBAL	__end_of_PWM1_START
	__end_of_PWM1_START:
;; =============== function _PWM1_START ends ============

	signat	_PWM1_START,88
psect	text427,local,class=CODE,delta=2
global __ptext427
__ptext427:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
