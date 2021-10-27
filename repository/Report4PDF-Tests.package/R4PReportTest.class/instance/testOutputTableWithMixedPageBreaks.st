tests - output
testOutputTableWithMixedPageBreaks
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTableWithMixedPageBreaks )

	 (  self new exampleTableWithMixedPageBreaks saveAndShowAs: 'exampleTableWithMixedPageBreaks.pdf' )  "  

	| report |

	report := self exampleTableWithMixedPageBreaks.

	report buildPDF.
	self assert: report printOutput = self outputTableWithMixedPageBreaks.
