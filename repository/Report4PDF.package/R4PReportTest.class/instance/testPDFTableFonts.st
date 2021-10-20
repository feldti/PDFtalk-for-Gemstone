tests - PDF
testPDFTableFonts
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTableFonts )

	 (  self new exampleTableFonts saveAndShowAs: 'exampleTableFonts.pdf' )  "  

	| report |

	report := self exampleTableFonts.
	self assert: (report byteArraySUnitAs: 'testTableFonts.pdf') asHexString = self pdfTableFonts
