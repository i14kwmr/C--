.a	DW	1
.b	DW	2
.c	WS	1
.d	WS	1
.e	WS	1
.f3	PUSH	FP
	LD	FP,SP
	CALL	__stkChk
	LD	G0,.e
	ADDS	G0,#1
	LD	G0,0,G0
	ADD	G0,#5
	LD	G1,.d
	ADDS	G1,G0
	LD	G1,0,G1
	PUSH	G1
	CALL	.f1
	LD	G1,.c
	ADDS	G1,#4
	LD	G1,0,G1
	ADD	G1,#5
	LD	G2,.c
	ADDS	G2,#6
	ADD	G1,0,G2
	ADD	G0,G1
	ADD	G0,.b
	POP	G1
	ADDS	G1,G0
	LD	G0,.a
	MUL	G0,.b
	ADD	G0,0,G1
	ST	G0,.b
	LD	G1,.c
	ADDS	G1,#1
	ST	G0,0,G1
	POP	FP
	RET