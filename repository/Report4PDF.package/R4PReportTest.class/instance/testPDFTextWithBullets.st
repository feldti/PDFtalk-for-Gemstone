tests - PDF
testPDFTextWithBullets
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTextWithBullets )

	 (  self new exampleTextWithBullets saveAndShowAs: 'exampleTextWithBullets.pdf' )  "  

	| report |

	report := self exampleTextWithBullets.
	self assert: (report byteArraySUnitAs: 'testTextWithBullets.pdf') asHexString = self pdfTextWithBullets
