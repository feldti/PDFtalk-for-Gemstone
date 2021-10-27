tests - PDF
testPDFAlignCenterMiddle
	 "Generated on 13. Juni 2021 um 18:14:33
	 (  self new createTestContentsHexString: #exampleAlignCenterMiddle )

	 (  self new exampleAlignCenterMiddle saveAndShowAs: 'exampleAlignCenterMiddle.pdf' )  "  

	| report |

	report := self exampleAlignCenterMiddle.
	self assert: (report byteArraySUnitAs: 'testAlignCenterMiddle.pdf') asHexString = self pdfAlignCenterMiddle
