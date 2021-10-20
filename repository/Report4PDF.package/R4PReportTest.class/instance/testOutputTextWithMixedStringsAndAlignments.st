tests - output
testOutputTextWithMixedStringsAndAlignments
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTextWithMixedStringsAndAlignments )

	 (  self new exampleTextWithMixedStringsAndAlignments saveAndShowAs: 'exampleTextWithMixedStringsAndAlignments.pdf' )  "  

	| report |

	report := self exampleTextWithMixedStringsAndAlignments.

	report buildPDF.
	self assert: report printOutput = self outputTextWithMixedStringsAndAlignments.
