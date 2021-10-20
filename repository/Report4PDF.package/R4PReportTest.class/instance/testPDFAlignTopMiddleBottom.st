tests - PDF
testPDFAlignTopMiddleBottom
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleAlignTopMiddleBottom )

	 (  self new exampleAlignTopMiddleBottom saveAndShowAs: 'exampleAlignTopMiddleBottom.pdf' )  "  

	| report |

	report := self exampleAlignTopMiddleBottom.
	self assert: (report byteArraySUnitAs: 'testAlignTopMiddleBottom.pdf') asHexString = self pdfAlignTopMiddleBottom
