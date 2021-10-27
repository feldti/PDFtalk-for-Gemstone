tests - output
testOutputTableCellVerticalAlignmentOfText2
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTableCellVerticalAlignmentOfText2 )

	 (  self new exampleTableCellVerticalAlignmentOfText2 saveAndShowAs: 'exampleTableCellVerticalAlignmentOfText2.pdf' )  "  

	| report |

	report := self exampleTableCellVerticalAlignmentOfText2.

	report buildPDF.
	self assert: report printOutput = self outputTableCellVerticalAlignmentOfText2.
