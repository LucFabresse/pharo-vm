generate machine code - concretize
concretizeMoveRMbr
	<var: #offset type: #sqInt>
	| srcReg offset destReg |
	srcReg := operands at: 0.
	offset := operands at: 1.
	destReg := operands at: 2.
	self machineCodeAt: 0 put: (self sbR: srcReg base: destReg offset: offset).
	^machineCodeSize := 4