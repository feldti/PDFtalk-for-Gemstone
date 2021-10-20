tests - PDF
testPDFTableNestedSections
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleTableNestedSections )

	 (  self new exampleTableNestedSections saveAndShowAs: 'exampleTableNestedSections.pdf' )  "  

	| report |

	report := self exampleTableNestedSections.
	self assert: (report byteArraySUnitAs: 'testTableNestedSections.pdf') asHexString = self pdfTableNestedSections
