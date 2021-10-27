tests - PDF
testPDFImageJPGScaled
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleImageJPGScaled )

	 (  self new exampleImageJPGScaled saveAndShowAs: 'exampleImageJPGScaled.pdf' )  "  

	| report |

	report := self exampleImageJPGScaled.
	self assert: (report byteArraySUnitAs: 'testImageJPGScaled.pdf') asHexString = self pdfImageJPGScaled
