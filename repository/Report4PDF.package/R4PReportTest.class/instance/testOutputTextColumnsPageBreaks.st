tests - output
testOutputTextColumnsPageBreaks
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTextColumnsPageBreaks )

	 (  self new exampleTextColumnsPageBreaks saveAndShowAs: 'exampleTextColumnsPageBreaks.pdf' )  "  

	| report |

	report := self exampleTextColumnsPageBreaks.

	report buildPDF.
	self assert: report printOutput = self outputTextColumnsPageBreaks.
