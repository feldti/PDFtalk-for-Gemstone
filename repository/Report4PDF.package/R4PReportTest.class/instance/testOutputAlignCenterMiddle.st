tests - output
testOutputAlignCenterMiddle
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsPrintOutput: #exampleAlignCenterMiddle )

	 (  self new exampleAlignCenterMiddle saveAndShowAs: 'exampleAlignCenterMiddle.pdf' )  "  

	| report |

	report := self exampleAlignCenterMiddle.

	report buildPDF.
	self assert: report printOutput = self outputAlignCenterMiddle.
