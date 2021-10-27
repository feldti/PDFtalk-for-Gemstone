tests - output
testOutputAlignCenter
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleAlignCenter )

	 (  self new exampleAlignCenter saveAndShowAs: 'exampleAlignCenter.pdf' )  "  

	| report wanted got|

	report := self exampleAlignCenter.

	report buildPDF.

	got := report printOutput.
	wanted := self outputAlignCenter.
	self assert: got = wanted.
