tests - PDF
testPDFTextBorder
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextBorder )

	 (  self new exampleTextBorder saveAndShowAs: 'exampleTextBorder.pdf' )  "  

	| report |

	report := self exampleTextBorder.
	self assert: (report byteArraySUnitAs: 'testTextBorder.pdf') asHexString = self pdfTextBorder
