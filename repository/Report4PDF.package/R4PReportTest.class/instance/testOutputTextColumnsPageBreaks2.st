tests - output
testOutputTextColumnsPageBreaks2
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTextColumnsPageBreaks2 )

	 (  self new exampleTextColumnsPageBreaks2 saveAndShowAs: 'exampleTextColumnsPageBreaks2.pdf' )  "  

	| report |

	report := self exampleTextColumnsPageBreaks2.

	report buildPDF.
	self assert: report printOutput = self outputTextColumnsPageBreaks2.
