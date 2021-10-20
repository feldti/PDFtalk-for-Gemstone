tests - output
testOutputTableFixedCellWidth
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleTableFixedCellWidth )

	 (  self new exampleTableFixedCellWidth saveAndShowAs: 'exampleTableFixedCellWidth.pdf' )  "  

	| report |

	report := self exampleTableFixedCellWidth.

	report buildPDF.
	self assert: report printOutput = self outputTableFixedCellWidth.
