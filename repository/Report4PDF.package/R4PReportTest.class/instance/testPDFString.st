tests - PDF
testPDFString
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleString )

	 (  self new exampleString saveAndShowAs: 'exampleString.pdf' )  "  

	| report |

	report := self exampleString.
	self assert: (report byteArraySUnitAs: 'testString.pdf') asHexString = self pdfString
