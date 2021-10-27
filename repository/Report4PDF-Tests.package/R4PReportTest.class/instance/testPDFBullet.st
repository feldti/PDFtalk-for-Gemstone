tests - PDF
testPDFBullet
	 "Generated on 13. Juni 2021 um 18:14:32
	 (  self new createTestContentsHexString: #exampleBullet )

	 (  self new exampleBullet saveAndShowAs: 'exampleBullet.pdf' )  "  

	| report |

	report := self exampleBullet.
	self assert: (report byteArraySUnitAs: 'testBullet.pdf') asHexString = self pdfBullet
