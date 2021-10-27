tests - PDF
testPDFTextWithMixedStrings
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextWithMixedStrings )

	 (  self new exampleTextWithMixedStrings saveAndShowAs: 'exampleTextWithMixedStrings.pdf' )  "  

	| report |

	report := self exampleTextWithMixedStrings.
	self assert: (report byteArraySUnitAs: 'testTextWithMixedStrings.pdf') asHexString = self pdfTextWithMixedStrings
