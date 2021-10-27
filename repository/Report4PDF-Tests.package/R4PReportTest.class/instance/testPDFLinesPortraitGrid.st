tests - PDF
testPDFLinesPortraitGrid
	 "Generated on 13. Juni 2021 um 18:14:31
	 (  self new createTestContentsHexString: #exampleLinesPortraitGrid )

	 (  self new exampleLinesPortraitGrid saveAndShowAs: 'exampleLinesPortraitGrid.pdf' )  "  

	| report |

	report := self exampleLinesPortraitGrid.
	self assert: (report byteArraySUnitAs: 'testLinesPortraitGrid.pdf') asHexString = self pdfLinesPortraitGrid
