tests - PDF
testPDFBusinessCardText2Border
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleBusinessCardText2Border )

	 (  self new exampleBusinessCardText2Border saveAndShowAs: 'exampleBusinessCardText2Border.pdf' )  "  

	| report |

	report := self exampleBusinessCardText2Border.
	self assert: (report byteArraySUnitAs: 'testBusinessCardText2Border.pdf') asHexString = self pdfBusinessCardText2Border
