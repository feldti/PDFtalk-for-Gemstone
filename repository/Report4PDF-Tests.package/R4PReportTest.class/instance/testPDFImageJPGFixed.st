tests - PDF
testPDFImageJPGFixed
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleImageJPGFixed )

	 (  self new exampleImageJPGFixed saveAndShowAs: 'exampleImageJPGFixed.pdf' )  "  

	| report |

	report := self exampleImageJPGFixed.
	self assert: (report byteArraySUnitAs: 'testImageJPGFixed.pdf') asHexString = self pdfImageJPGFixed
