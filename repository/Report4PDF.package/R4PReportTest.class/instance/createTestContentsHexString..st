actions
createTestContentsHexString: aMethod
	" self new createTestContentsHexString: #exampleAlignCenter "

	| name methodStream report hexString | 

	aMethod size < 8 ifTrue: [^self error: 'Invalid test method name ... too short '].
	(aMethod beginsWith: 'example') ifFalse: [^self error: 'Invalid test method name ... must begin with ''example'' '].

	report := self perform: aMethod.

	name := aMethod  copyFrom: 8 to: aMethod size.
	hexString := (report byteArraySUnitAs: 'test', name , '.pdf') asHexString. 

	methodStream := WriteStream on: String new.
	methodStream nextPutAll: 'pdf'; nextPutAll: name; 
		cr; tab; nextPutAll: ' "Generated on '; nextPutAll: Timestamp now printString; nextPut: $" ;
		cr; cr; tab; nextPut: $^ ; nextPutAll: hexString printString; 
		cr; yourself.
	self class compile: methodStream contents classified: 'pdf'.
