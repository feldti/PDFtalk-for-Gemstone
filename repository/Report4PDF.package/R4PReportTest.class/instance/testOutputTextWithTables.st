tests - output
testOutputTextWithTables
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTextWithTables )

	 (  self new exampleTextWithTables saveAndShowAs: 'exampleTextWithTables.pdf' )  "  

	| report |

	report := self exampleTextWithTables.

	report buildPDF.
	self assert: report printOutput = self outputTextWithTables.
