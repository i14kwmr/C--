.L1
	WS	10
.a
	DW	.L1
.main
	ENTRY	3
	LDL	1
	STL	1
	POP
	LDL	1
	LDC	1
	ADD
	STL	1
	POP
	LDL	2
	STL	2
	POP
	LDL	2
	LDC	65535
	ADD
	STL	2
	POP
	LDG	.a
	LDC	0
	LDW
	STL	1
	POP
	LDG	.a
	LDC	1
	LDW
	STL	2
	POP
	LDL	3
	LDC	0
	LDW
	STL	1
	POP
	LDL	3
	LDC	1
	LDW
	STL	2
	POP
	RET