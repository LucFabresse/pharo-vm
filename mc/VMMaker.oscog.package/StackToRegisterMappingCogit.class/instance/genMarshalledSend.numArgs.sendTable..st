bytecode generator support
genMarshalledSend: selector numArgs: numArgs sendTable: sendTable
	<inline: false>
	<var: #sendTable type: #'sqInt *'>
	| annotation |
	(objectMemory isYoung: selector) ifTrue:
		[hasYoungReferent := true].
	self assert: needsFrame.
	annotation := self annotationForSendTable: sendTable.
	numArgs > 2 ifTrue:
		[self MoveCq: numArgs R: SendNumArgsReg].
	(BytecodeSetHasDirectedSuperSend
	 and: [annotation = IsDirectedSuperSend]) ifTrue:
		[self annotate: (self MoveCw: tempOop R: TempReg) objRef: tempOop].
	self MoveCw: selector R: ClassReg.
	self annotate: (self Call: (sendTable at: (numArgs min: NumSendTrampolines - 1)))
		with: annotation.
	optStatus isReceiverResultRegLive: false.
	^self ssPushRegister: ReceiverResultReg