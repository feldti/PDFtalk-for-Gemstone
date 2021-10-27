tests - PDF
testPDFText
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleText )

	 (  self new exampleText saveAndShowAs: 'exampleText.pdf' )  "  

	| report |

	report := self exampleText.
	self assert: (report byteArraySUnitAs: 'testText.pdf') asHexString = self pdfText
