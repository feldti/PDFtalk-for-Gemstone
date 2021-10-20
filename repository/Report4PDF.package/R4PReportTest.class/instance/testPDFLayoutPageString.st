tests - PDF
testPDFLayoutPageString
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleLayoutPageString )

	 (  self new exampleLayoutPageString saveAndShowAs: 'exampleLayoutPageString.pdf' )  "  

	| report |

	report := self exampleLayoutPageString.
	self assert: (report byteArraySUnitAs: 'testLayoutPageString.pdf') asHexString = self pdfLayoutPageString
