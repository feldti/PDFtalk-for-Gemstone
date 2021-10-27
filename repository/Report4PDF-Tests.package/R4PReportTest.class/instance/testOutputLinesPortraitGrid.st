tests - output
testOutputLinesPortraitGrid
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleLinesPortraitGrid )

	 (  self new exampleLinesPortraitGrid saveAndShowAs: 'exampleLinesPortraitGrid.pdf' )  "  

	| report |

	report := self exampleLinesPortraitGrid.

	report buildPDF.
	self assert: report printOutput = self outputLinesPortraitGrid.
