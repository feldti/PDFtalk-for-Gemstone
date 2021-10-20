actions
saveAs: aFilename

	| document | 

	document := self buildPDF.
	document saveAs: aFilename
