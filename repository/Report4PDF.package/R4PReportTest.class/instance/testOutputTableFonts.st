tests - output
testOutputTableFonts
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTableFonts )

	 (  self new exampleTableFonts saveAndShowAs: 'exampleTableFonts.pdf' )  "  

	| report |

	report := self exampleTableFonts.

	report buildPDF.
	self assert: report printOutput = self outputTableFonts.
