tests - PDF
testPDFTableNoWrap
	 "Generated on 13. Juni 2021 um 18:14:37
	 (  self new createTestContentsHexString: #exampleTableNoWrap )

	 (  self new exampleTableNoWrap saveAndShowAs: 'exampleTableNoWrap.pdf' )  "  

	| report |

	report := self exampleTableNoWrap.
	self assert: (report byteArraySUnitAs: 'testTableNoWrap.pdf') asHexString = self pdfTableNoWrap
