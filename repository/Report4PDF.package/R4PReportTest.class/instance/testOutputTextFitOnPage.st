tests - output
testOutputTextFitOnPage
	 "Generated on 13. Juni 2021 um 18:14:35
	 (  self new createTestContentsPrintOutput: #exampleTextFitOnPage )

	 (  self new exampleTextFitOnPage saveAndShowAs: 'exampleTextFitOnPage.pdf' )  "  

	| report |

	report := self exampleTextFitOnPage.

	report buildPDF.
	self assert: report printOutput = self outputTextFitOnPage.
