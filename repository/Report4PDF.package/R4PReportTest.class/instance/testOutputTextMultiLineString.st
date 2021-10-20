tests - output
testOutputTextMultiLineString
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsPrintOutput: #exampleTextMultiLineString )

	 (  self new exampleTextMultiLineString saveAndShowAs: 'exampleTextMultiLineString.pdf' )  "  

	| report |

	report := self exampleTextMultiLineString.

	report buildPDF.
	self assert: report printOutput = self outputTextMultiLineString.
