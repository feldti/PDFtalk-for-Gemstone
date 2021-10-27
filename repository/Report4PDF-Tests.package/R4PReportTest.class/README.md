Report4PDF-test is the package of SUnit tests for Report4PDF.

The tests are implemented as examples for which results are stored and compared to future results.
All example methods are prefixed with 'example'. 

To see all the examples use...
	R4PReportTest class >> buildAndDisplayAllTestReports'. 
...this will open one PDF file for each tests (60 at last count).

To see individual examples, use...
	self new exampleAlignCenter saveAndShowAs: 'exampleAlignCenter.pdf' 

To build the text output, use...
	self new createTestOutputFor: #exampleAlignCenter 

To rebuild all the test methods, use...
	R4PReportTest class >> createTestMethodstForAll



