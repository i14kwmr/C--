_stdin	WS	1
_stdout	WS	1
_stderr	WS	1
.h	PUSH	FP
	LD	FP,SP
	CALL	__stkChk
	LD	G0,4,FP
	PUSH	G0
	CALL	_g
	ADD	SP,#2
	POP	FP
	RET
.L1	STRING	"aaa.txt"
.L2	STRING	"r"
_f	PUSH	FP
	LD	FP,SP
	PUSH	G3
	PUSH	G4
	CALL	__stkChk
	LD	G0,#.L2
	PUSH	G0
	LD	G0,#.L1
	PUSH	G0
	CALL	_fopen
	ADD	SP,#4
	LD	G4,G0
	LD	G3,G4
	PUSH	G4
	CALL	.h
	ADD	SP,#2
	LD	G3,G0
	POP	G4
	POP	G3
	POP	FP
	RET
