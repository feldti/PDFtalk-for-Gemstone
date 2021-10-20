build
buildReport: aReport

	| document  | 

	[	
		aReport start.
	 	self report: aReport.
		aReport builder: self.
	
		self buildPages.
		self updateOutputPages.
		aReport traceOutput:  aReport printOutput.
		aReport traceOutput:  'output pages: ', self outputPages size printString
	] ensure: [
		aReport end].

	document := (PDFtalk at: #Document) new.
	self outputPages do: [:each | 
		document root addPage: each renderPage].
	^document
