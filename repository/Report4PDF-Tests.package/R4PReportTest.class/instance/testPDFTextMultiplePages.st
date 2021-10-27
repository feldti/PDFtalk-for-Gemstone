tests - PDF
testPDFTextMultiplePages
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextMultiplePages )

	 (  self new exampleTextMultiplePages saveAndShowAs: 'exampleTextMultiplePages.pdf' )  "  

	| report |

	report := self exampleTextMultiplePages.
	self assert: (report byteArraySUnitAs: 'testTextMultiplePages.pdf') asHexString = self pdfTextMultiplePages
