tests - PDF
testPDFHeaderFooter
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleHeaderFooter )

	 (  self new exampleHeaderFooter saveAndShowAs: 'exampleHeaderFooter.pdf' )  "  

	| report |

	report := self exampleHeaderFooter.
	self assert: (report byteArraySUnitAs: 'testHeaderFooter.pdf') asHexString = self pdfHeaderFooter
