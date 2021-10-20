tests - output
testOutputAlignBottomWordWrap
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsPrintOutput: #exampleAlignBottomWordWrap )

	 (  self new exampleAlignBottomWordWrap saveAndShowAs: 'exampleAlignBottomWordWrap.pdf' )  "  

	| report |

	report := self exampleAlignBottomWordWrap.

	report buildPDF.
	self assert: report printOutput = self outputAlignBottomWordWrap.
