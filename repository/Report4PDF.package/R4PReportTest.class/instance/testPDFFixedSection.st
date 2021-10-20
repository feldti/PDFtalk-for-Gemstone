tests - PDF
testPDFFixedSection
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleFixedSection )

	 (  self new exampleFixedSection saveAndShowAs: 'exampleFixedSection.pdf' )  "  

	| report |

	report := self exampleFixedSection.
	self assert: (report byteArraySUnitAs: 'testFixedSection.pdf') asHexString = self pdfFixedSection
