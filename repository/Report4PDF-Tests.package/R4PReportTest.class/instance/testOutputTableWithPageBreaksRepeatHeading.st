tests - output
testOutputTableWithPageBreaksRepeatHeading
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTableWithPageBreaksRepeatHeading )

	 (  self new exampleTableWithPageBreaksRepeatHeading saveAndShowAs: 'exampleTableWithPageBreaksRepeatHeading.pdf' )  "  

	| report |

	report := self exampleTableWithPageBreaksRepeatHeading.

	report buildPDF.
	self assert: report printOutput = self outputTableWithPageBreaksRepeatHeading.
