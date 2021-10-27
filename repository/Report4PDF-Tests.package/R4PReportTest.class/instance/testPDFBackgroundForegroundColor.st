tests - PDF
testPDFBackgroundForegroundColor
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleBackgroundForegroundColor )

	 (  self new exampleBackgroundForegroundColor saveAndShowAs: 'exampleBackgroundForegroundColor.pdf' )  "  

	| report |

	report := self exampleBackgroundForegroundColor.
	self assert: (report byteArraySUnitAs: 'testBackgroundForegroundColor.pdf') asHexString = self pdfBackgroundForegroundColor
