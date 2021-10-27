tests - PDF
testPDFImageColorGIF
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleImageColorGIF )

	 (  self new exampleImageColorGIF saveAndShowAs: 'exampleImageColorGIF.pdf' )  "  

	| report |

	report := self exampleImageColorGIF.
	self assert: (report byteArraySUnitAs: 'testImageColorGIF.pdf') asHexString = self pdfImageColorGIF
