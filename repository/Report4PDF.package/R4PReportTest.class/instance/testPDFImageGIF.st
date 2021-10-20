tests - PDF
testPDFImageGIF
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleImageGIF )

	 (  self new exampleImageGIF saveAndShowAs: 'exampleImageGIF.pdf' )  "  

	| report |

	report := self exampleImageGIF.
	self assert: (report byteArraySUnitAs: 'testImageGIF.pdf') asHexString = self pdfImageGIF
