tests - output
testOutputTableNoWrapTruncated
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleTableNoWrapTruncated )

	 (  self new exampleTableNoWrapTruncated saveAndShowAs: 'exampleTableNoWrapTruncated.pdf' )  "  

	| report |

	report := self exampleTableNoWrapTruncated.

	report buildPDF.
	self assert: report printOutput = self outputTableNoWrapTruncated.
