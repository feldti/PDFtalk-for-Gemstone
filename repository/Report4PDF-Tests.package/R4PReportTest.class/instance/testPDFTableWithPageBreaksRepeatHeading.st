tests - PDF
testPDFTableWithPageBreaksRepeatHeading
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTableWithPageBreaksRepeatHeading )

	 (  self new exampleTableWithPageBreaksRepeatHeading saveAndShowAs: 'exampleTableWithPageBreaksRepeatHeading.pdf' )  "  

	| report |

	report := self exampleTableWithPageBreaksRepeatHeading.
	self assert: (report byteArraySUnitAs: 'testTableWithPageBreaksRepeatHeading.pdf') asHexString = self pdfTableWithPageBreaksRepeatHeading
