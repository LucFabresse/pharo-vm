multi-threading simulation switch
setOwnerIndexOfProcess: aProcess to: anIndex bind: bind
	"This method includes or excludes CoInterpreterMT methods as required.
	 Auto-generated by CogVMSimulator>>ensureMultiThreadingOverridesAreUpToDate"

	^self perform: #setOwnerIndexOfProcess:to:bind:
		withArguments: {aProcess. anIndex. bind}
		inSuperclass: (cogThreadManager ifNil: [CoInterpreterPrimitives] ifNotNil: [CoInterpreterMT])