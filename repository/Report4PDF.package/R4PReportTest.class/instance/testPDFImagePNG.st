tests - PDF
testPDFImagePNG
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleImagePNG )

	 (  self new exampleImagePNG saveAndShowAs: 'exampleImagePNG.pdf' )  "  

	| report |

	report := self exampleImagePNG.
	self assert: (report byteArraySUnitAs: 'testImagePNG.pdf') asHexString = self pdfImagePNG
