tests - output
testOutputTableCellSpacingAndPadding
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTableCellSpacingAndPadding )

	 (  self new exampleTableCellSpacingAndPadding saveAndShowAs: 'exampleTableCellSpacingAndPadding.pdf' )  "  

	| report |

	report := self exampleTableCellSpacingAndPadding.

	report buildPDF.
	self assert: report printOutput = self outputTableCellSpacingAndPadding.
