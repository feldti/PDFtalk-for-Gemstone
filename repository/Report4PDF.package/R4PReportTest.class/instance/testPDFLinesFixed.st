tests - PDF
testPDFLinesFixed
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleLinesFixed )

	 (  self new exampleLinesFixed saveAndShowAs: 'exampleLinesFixed.pdf' )  "  

	| report |

	report := self exampleLinesFixed.
	self assert: (report byteArraySUnitAs: 'testLinesFixed.pdf') asHexString = self pdfLinesFixed
