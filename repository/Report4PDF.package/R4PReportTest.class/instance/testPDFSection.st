tests - PDF
testPDFSection
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleSection )

	 (  self new exampleSection saveAndShowAs: 'exampleSection.pdf' )  "  

	| report |

	report := self exampleSection.
	self assert: (report byteArraySUnitAs: 'testSection.pdf') asHexString = self pdfSection
