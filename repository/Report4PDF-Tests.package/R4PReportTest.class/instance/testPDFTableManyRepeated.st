tests - PDF
testPDFTableManyRepeated
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTableManyRepeated )

	 (  self new exampleTableManyRepeated saveAndShowAs: 'exampleTableManyRepeated.pdf' )  "  

	| report |

	report := self exampleTableManyRepeated.
	self assert: (report byteArraySUnitAs: 'testTableManyRepeated.pdf') asHexString = self pdfTableManyRepeated
