tests - PDF
testPDFLinesFancy
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleLinesFancy )

	 (  self new exampleLinesFancy saveAndShowAs: 'exampleLinesFancy.pdf' )  "  

	| report |

	report := self exampleLinesFancy.
	self assert: (report byteArraySUnitAs: 'testLinesFancy.pdf') asHexString = self pdfLinesFancy
