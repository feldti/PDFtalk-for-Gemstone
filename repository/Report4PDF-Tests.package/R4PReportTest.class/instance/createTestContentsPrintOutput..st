actions
createTestContentsPrintOutput: aMethod
	" self new createTestContentsPrintOutput: #exampleAlignCenter "

	| name methodStream report printOutput | 

	aMethod size < 8 ifTrue: [^self error: 'Invalid test method name ... too short '].
	(aMethod beginsWith: 'example') ifFalse: [^self error: 'Invalid test method name ... must begin with ''example'' '].

	report := self perform: aMethod.

	name := aMethod  copyFrom: 8 to: aMethod size.
	report buildPDF.
	printOutput := report printOutput.

	methodStream := WriteStream on: String new.
	methodStream nextPutAll: 'output'; nextPutAll: name; 
		cr; tab; nextPutAll: ' "Generated on '; nextPutAll: Timestamp now printString; nextPut: $" ;
		cr; cr; tab; nextPut: $^ ; nextPutAll: printOutput printString; 
		cr; yourself.
	self class compile: methodStream contents classified: 'outputs'.
