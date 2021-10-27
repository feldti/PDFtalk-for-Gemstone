tests - output
testOutputLinesSections
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleLinesSections )

	 (  self new exampleLinesSections saveAndShowAs: 'exampleLinesSections.pdf' )  "  

	| report |

	report := self exampleLinesSections.

	report buildPDF.
	self assert: report printOutput = self outputLinesSections.
