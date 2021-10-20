tests - output
testOutputTextColumns
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleTextColumns )

	 (  self new exampleTextColumns saveAndShowAs: 'exampleTextColumns.pdf' )  "  

	| report |

	report := self exampleTextColumns.

	report buildPDF.
	self assert: report printOutput = self outputTextColumns.
