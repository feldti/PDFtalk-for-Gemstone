tests - output
testOutputTableNestedSections
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsPrintOutput: #exampleTableNestedSections )

	 (  self new exampleTableNestedSections saveAndShowAs: 'exampleTableNestedSections.pdf' )  "  

	| report |

	report := self exampleTableNestedSections.

	report buildPDF.
	self assert: report printOutput = self outputTableNestedSections.
