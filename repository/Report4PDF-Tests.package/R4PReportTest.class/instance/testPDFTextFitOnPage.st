tests - PDF
testPDFTextFitOnPage
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsHexString: #exampleTextFitOnPage )

	 (  self new exampleTextFitOnPage saveAndShowAs: 'exampleTextFitOnPage.pdf' )  "  

	| report |

	report := self exampleTextFitOnPage.
	self assert: (report byteArraySUnitAs: 'testTextFitOnPage.pdf') asHexString = self pdfTextFitOnPage
