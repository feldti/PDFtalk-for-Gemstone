tests - PDF
testPDFText1Border
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleText1Border )

	 (  self new exampleText1Border saveAndShowAs: 'exampleText1Border.pdf' )  "  

	| report |

	report := self exampleText1Border.
	self assert: (report byteArraySUnitAs: 'testText1Border.pdf') asHexString = self pdfText1Border
