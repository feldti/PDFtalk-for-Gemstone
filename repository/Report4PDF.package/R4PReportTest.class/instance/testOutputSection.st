tests - output
testOutputSection
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleSection )

	 (  self new exampleSection saveAndShowAs: 'exampleSection.pdf' )  "  

	| report |

	report := self exampleSection.

	report buildPDF.
	self assert: report printOutput = self outputSection.
