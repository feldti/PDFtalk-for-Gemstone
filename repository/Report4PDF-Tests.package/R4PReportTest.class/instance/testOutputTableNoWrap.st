tests - output
testOutputTableNoWrap
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsPrintOutput: #exampleTableNoWrap )

	 (  self new exampleTableNoWrap saveAndShowAs: 'exampleTableNoWrap.pdf' )  "  

	| report |

	report := self exampleTableNoWrap.

	report buildPDF.
	self assert: report printOutput = self outputTableNoWrap.
