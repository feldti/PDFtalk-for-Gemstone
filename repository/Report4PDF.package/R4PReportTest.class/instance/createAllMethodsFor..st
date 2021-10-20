actions
createAllMethodsFor: aMethod
	" self new createAllMethodsFor: #exampleAlignCenter "

	self createTestContentsHexString: aMethod.
	self createTestContentsPrintOutput: aMethod.
	self createTestMethodHexString: aMethod.
	self createTestMethodPrintOutput: aMethod.
