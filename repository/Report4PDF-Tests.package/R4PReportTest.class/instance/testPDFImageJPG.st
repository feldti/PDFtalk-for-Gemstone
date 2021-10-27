tests - PDF
testPDFImageJPG
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleImageJPG )

	 (  self new exampleImageJPG saveAndShowAs: 'exampleImageJPG.pdf' )  "  

	| report |

	report := self exampleImageJPG.
	self assert: (report byteArraySUnitAs: 'testImageJPG.pdf') asHexString = self pdfImageJPG
