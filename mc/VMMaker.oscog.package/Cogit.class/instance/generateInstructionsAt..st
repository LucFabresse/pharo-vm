generate machine code
generateInstructionsAt: eventualAbsoluteAddress
	"Size pc-dependent instructions and assign eventual addresses to all instructions.
	 Answer the size of the code.
	 Compute forward branches based on virtual address (abstract code starts at 0),
	 assuming that any branches branched over are long.
	 Compute backward branches based on actual address.
	 Reuse the fixups array to record the pc-dependent instructions that need to have
	 their code generation postponed until after the others."
	| absoluteAddress pcDependentIndex abstractInstruction fixup |
	<var: #abstractInstruction type: #'AbstractInstruction *'>
	<var: #fixup type: #'BytecodeFixup *'>
	absoluteAddress := eventualAbsoluteAddress.
	pcDependentIndex := 0.
	0 to: opcodeIndex - 1 do:
		[:i|
		breakPC = absoluteAddress ifTrue:
			[self halt: 'breakPC reached in generateInstructionsAt:'].
		abstractInstruction := self abstractInstructionAt: i.
		abstractInstruction isPCDependent
			ifTrue:
				[abstractInstruction sizePCDependentInstructionAt: absoluteAddress.
				 fixup := self fixupAt: pcDependentIndex.
				 pcDependentIndex := pcDependentIndex + 1.
				 fixup instructionIndex: i.
				 absoluteAddress := absoluteAddress + abstractInstruction machineCodeSize]
			ifFalse:
				[absoluteAddress := abstractInstruction concretizeAt: absoluteAddress]].
	0 to: pcDependentIndex - 1 do:
		[:i|
		fixup := self fixupAt: i.
		abstractInstruction := self abstractInstructionAt: fixup instructionIndex.
		breakPC = absoluteAddress ifTrue:
			[self halt: 'breakPC reached in generateInstructionsAt:'].
		abstractInstruction concretizeAt: abstractInstruction address].
	self cCode: ''
		inSmalltalk:
			[breakPC ifNotNil:
				[breakPC <= absoluteAddress ifTrue:
					[self singleStep: true]]].
	^absoluteAddress - eventualAbsoluteAddress