tests - PDF
testPDFBusinessCardText1Border
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleBusinessCardText1Border )

	 (  self new exampleBusinessCardText1Border saveAndShowAs: 'exampleBusinessCardText1Border.pdf' )  "  

	| report |

	report := self exampleBusinessCardText1Border.
	self assert: (report byteArraySUnitAs: 'testBusinessCardText1Border.pdf') asHexString = self pdfBusinessCardText1Border
