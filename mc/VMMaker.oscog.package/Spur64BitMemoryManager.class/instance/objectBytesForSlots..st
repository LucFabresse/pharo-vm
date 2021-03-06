object enumeration
objectBytesForSlots: numSlots
	"Answer the total number of bytes in an object with the given
	 number of slots, including header and possible overflow size header."
	<returnTypeC: #usqInt>
	^numSlots = 0
		ifTrue: [self allocationUnit + self baseHeaderSize] "always at least one slot for forwarding pointer"
		ifFalse:
			[numSlots << self shiftForWord
			 + (numSlots >= self numSlotsMask
					ifTrue: [self baseHeaderSize + self baseHeaderSize]
					ifFalse: [self baseHeaderSize])]