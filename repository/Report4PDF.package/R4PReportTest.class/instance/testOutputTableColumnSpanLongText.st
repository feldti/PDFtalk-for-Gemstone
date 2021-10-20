tests - output
testOutputTableColumnSpanLongText
	 "Generated on 13. Juni 2021 um 18:14:38
	 (  self new createTestContentsPrintOutput: #exampleTableColumnSpanLongText )

	 (  self new exampleTableColumnSpanLongText saveAndShowAs: 'exampleTableColumnSpanLongText.pdf' )  "  

	| report |

	report := self exampleTableColumnSpanLongText.

	report buildPDF.
	self assert: report printOutput = self outputTableColumnSpanLongText.
