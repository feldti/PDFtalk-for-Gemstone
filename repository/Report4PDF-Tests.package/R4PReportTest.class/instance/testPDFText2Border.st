tests - PDF
testPDFText2Border
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleText2Border )

	 (  self new exampleText2Border saveAndShowAs: 'exampleText2Border.pdf' )  "  

	| report |

	report := self exampleText2Border.
	self assert: (report byteArraySUnitAs: 'testText2Border.pdf') asHexString = self pdfText2Border
