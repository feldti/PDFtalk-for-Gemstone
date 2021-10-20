tests - output
testOutputTableWithPageBreaks
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTableWithPageBreaks )

	 (  self new exampleTableWithPageBreaks saveAndShowAs: 'exampleTableWithPageBreaks.pdf' )  "  

	| report |

	report := self exampleTableWithPageBreaks.

	report buildPDF.
	self assert: report printOutput = self outputTableWithPageBreaks.
