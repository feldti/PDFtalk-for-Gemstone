tests - output
testOutputTableManyRepeated
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTableManyRepeated )

	 (  self new exampleTableManyRepeated saveAndShowAs: 'exampleTableManyRepeated.pdf' )  "  

	| report |

	report := self exampleTableManyRepeated.

	report buildPDF.
	self assert: report printOutput = self outputTableManyRepeated.
