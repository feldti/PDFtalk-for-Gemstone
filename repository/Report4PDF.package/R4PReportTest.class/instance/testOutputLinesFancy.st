tests - output
testOutputLinesFancy
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleLinesFancy )

	 (  self new exampleLinesFancy saveAndShowAs: 'exampleLinesFancy.pdf' )  "  

	| report |

	report := self exampleLinesFancy.

	report buildPDF.
	self assert: report printOutput = self outputLinesFancy.
