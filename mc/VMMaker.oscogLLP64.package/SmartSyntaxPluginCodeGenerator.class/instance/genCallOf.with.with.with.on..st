translating builtins
genCallOf: aSelector with: firstArgNode with: secondArgNode with: thirdArgNode on: aStream
	pluginFunctionsUsed add: aSelector.
	aStream nextPutAll: (self cFunctionNameFor: aSelector).
	aStream nextPut: $(.
	self emitCExpression: firstArgNode on: aStream.
	aStream nextPut: $,.
	self emitCExpression: secondArgNode on: aStream.
	aStream nextPut: $,.
	self emitCExpression: thirdArgNode on: aStream.
	aStream nextPut: $)