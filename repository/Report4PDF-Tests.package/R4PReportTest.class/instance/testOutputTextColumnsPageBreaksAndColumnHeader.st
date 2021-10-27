tests - output
testOutputTextColumnsPageBreaksAndColumnHeader
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleTextColumnsPageBreaksAndColumnHeader )

	 (  self new exampleTextColumnsPageBreaksAndColumnHeader saveAndShowAs: 'exampleTextColumnsPageBreaksAndColumnHeader.pdf' )  "  

	| report |

	report := self exampleTextColumnsPageBreaksAndColumnHeader.

	report buildPDF.
	self assert: report printOutput = self outputTextColumnsPageBreaksAndColumnHeader.
