tests - PDF
testPDFImageJPGPageBreak
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleImageJPGPageBreak )

	 (  self new exampleImageJPGPageBreak saveAndShowAs: 'exampleImageJPGPageBreak.pdf' )  "  

	| report |

	report := self exampleImageJPGPageBreak.
	self assert: (report byteArraySUnitAs: 'testImageJPGPageBreak.pdf') asHexString = self pdfImageJPGPageBreak
