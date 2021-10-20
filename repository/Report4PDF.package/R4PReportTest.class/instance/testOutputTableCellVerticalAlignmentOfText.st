tests - output
testOutputTableCellVerticalAlignmentOfText
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleTableCellVerticalAlignmentOfText )

	 (  self new exampleTableCellVerticalAlignmentOfText saveAndShowAs: 'exampleTableCellVerticalAlignmentOfText.pdf' )  "  

	| report |

	report := self exampleTableCellVerticalAlignmentOfText.

	report buildPDF.
	self assert: report printOutput = self outputTableCellVerticalAlignmentOfText.
