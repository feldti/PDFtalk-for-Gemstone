tests - PDF
testPDFTextFlip
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextFlip )

	 (  self new exampleTextFlip saveAndShowAs: 'exampleTextFlip.pdf' )  "  

	| report |

	report := self exampleTextFlip.
	self assert: (report byteArraySUnitAs: 'testTextFlip.pdf') asHexString = self pdfTextFlip
