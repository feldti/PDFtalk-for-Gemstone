tests - PDF
testPDFTableNoWrapTruncated
	 "Generated on 13. Juni 2021 um 18:14:36
	 (  self new createTestContentsHexString: #exampleTableNoWrapTruncated )

	 (  self new exampleTableNoWrapTruncated saveAndShowAs: 'exampleTableNoWrapTruncated.pdf' )  "  

	| report |

	report := self exampleTableNoWrapTruncated.
	self assert: (report byteArraySUnitAs: 'testTableNoWrapTruncated.pdf') asHexString = self pdfTableNoWrapTruncated
