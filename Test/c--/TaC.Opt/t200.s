_main	PUSH	FP
	LD	FP,SP
	PUSH	G3
	PUSH	G4
	PUSH	G5
	CALL	__stkChk
	LD	G0,G4
	MUL	G0,G5
	LD	G3,G0
	LD	G0,G4
	DIV	G0,G5
	LD	G3,G0
	LD	G0,G4
	MOD	G0,G5
	LD	G3,G0
	CALL	_f
	MUL	G0,G5
	LD	G3,G0
	CALL	_f
	DIV	G0,G5
	LD	G3,G0
	CALL	_f
	MOD	G0,G5
	LD	G3,G0
	CALL	_f
	MUL	G0,G4
	LD	G3,G0
	CALL	_f
	LD	G1,G4
	DIV	G1,G0
	LD	G3,G1
	CALL	_f
	LD	G1,G4
	MOD	G1,G0
	LD	G3,G1
	LD	G0,#0
	POP	G5
	POP	G4
	POP	G3
	POP	FP
	RET
