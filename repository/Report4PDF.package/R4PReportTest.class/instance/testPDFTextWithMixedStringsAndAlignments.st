tests - PDF
testPDFTextWithMixedStringsAndAlignments
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextWithMixedStringsAndAlignments )

	 (  self new exampleTextWithMixedStringsAndAlignments saveAndShowAs: 'exampleTextWithMixedStringsAndAlignments.pdf' )  "  

	| report |

	report := self exampleTextWithMixedStringsAndAlignments.
	self assert: (report byteArraySUnitAs: 'testTextWithMixedStringsAndAlignments.pdf') asHexString = self pdfTextWithMixedStringsAndAlignments
