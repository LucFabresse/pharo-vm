inline cacheing
relocateCallBeforeReturnPC: retpc by: delta
	| instr distanceDiv4 |
	self assert: delta \\ 4 = 0.
	delta ~= 0 ifTrue:
		[instr := self instructionBeforeAddress: retpc.
		 self assert: ((self instructionIsB: instr) or: [self instructionIsBL: instr]).
		 distanceDiv4 := instr bitAnd: 16rFFFFFF.
		 distanceDiv4 := distanceDiv4 + (delta // 4).
		 objectMemory longAt: retpc - 4 put: ((instr bitAnd: 16rFF000000) bitOr: (delta bitAnd: 16rFFFFFF))]