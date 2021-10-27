actions
createTestMethodHexString: aMethod
	" self new createTestMethodHexString: #exampleTableFonts "

	| name methodStream | 

	aMethod size < 8 ifTrue: [^self error: 'Invalid test method name ... too short '].
	(aMethod beginsWith: 'example') ifFalse: [^self error: 'Invalid test method name ... must begin with ''example'' '].

	name := aMethod  copyFrom: 8 to: aMethod size.
	methodStream := WriteStream on: String new.
	methodStream nextPutAll: 'testPDF'; nextPutAll: name; 
		cr; tab; nextPutAll: ' "Generated on '; nextPutAll: Timestamp now printString; 
		cr; tab; nextPutAll: ' (  self new createTestContentsHexString: #example'; nextPutAll: name ; nextPutAll:' )'; 
		cr; 
		cr; tab; nextPutAll: ' (  self new example'; nextPutAll: name; nextPutAll: ' saveAndShowAs: ''example'; nextPutAll: name; nextPutAll: '.pdf'' )  "  '; 
		cr; cr; tab; nextPutAll: '| report |';
		cr; cr; tab; nextPutAll: 'report := self example'; nextPutAll: name; nextPut: $. ;
		cr; tab; nextPutAll: 'self assert: (report byteArraySUnitAs: ''test'; nextPutAll: name; 
			nextPutAll: '.pdf'') asHexString = self pdf'; nextPutAll: name.

	self class compile: methodStream contents classified: 'tests - PDF'.
