tests - PDF
testPDFLinesSections
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleLinesSections )

	 (  self new exampleLinesSections saveAndShowAs: 'exampleLinesSections.pdf' )  "  

	| report |

	report := self exampleLinesSections.
	self assert: (report byteArraySUnitAs: 'testLinesSections.pdf') asHexString = self pdfLinesSections
