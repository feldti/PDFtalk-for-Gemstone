tests - PDF
testPDFText2
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleText2 )

	 (  self new exampleText2 saveAndShowAs: 'exampleText2.pdf' )  "  

	| report |

	report := self exampleText2.
	self assert: (report byteArraySUnitAs: 'testText2.pdf') asHexString = self pdfText2
