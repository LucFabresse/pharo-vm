inline primitive generators generated code
genLowcodePopPointer
	<option: #LowcodeVM>
	<inline: true>
	"Generated by the Lowcode instruction generator."
	| pointerValue |
	self allocateRegistersForLowcodeInteger: [:pointerValueValue |
		pointerValue := pointerValueValue.
	].

	self ssNativeTop nativePopToReg: pointerValue.
	self ssNativePop: 1.


	^ 0

