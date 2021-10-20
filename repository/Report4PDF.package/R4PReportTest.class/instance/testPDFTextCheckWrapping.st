tests - PDF
testPDFTextCheckWrapping
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTextCheckWrapping )

	 (  self new exampleTextCheckWrapping saveAndShowAs: 'exampleTextCheckWrapping.pdf' )  "  

	| report |

	report := self exampleTextCheckWrapping.
	self assert: (report byteArraySUnitAs: 'testTextCheckWrapping.pdf') asHexString = self pdfTextCheckWrapping
