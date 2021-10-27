tests - output
testOutputFixedSection
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleFixedSection )

	 (  self new exampleFixedSection saveAndShowAs: 'exampleFixedSection.pdf' )  "  

	| report |

	report := self exampleFixedSection.

	report buildPDF.
	self assert: report printOutput = self outputFixedSection.
