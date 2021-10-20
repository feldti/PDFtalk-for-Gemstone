actions
checkAppendReport
	" self new checkAppendReport"

	| report document pdf dir |
	report := self exampleText.
	document := report buildPDF.
	pdf := (PDFtalk at: #File) read: 'exampleAlignCenter.pdf' asFilename.
	pdf root pagesDo: [:page | document root addPage: page].
	dir := (GsFile _expandEnvVariable: 'HOME' isClient: false) , '/'.
	document saveAs: dir , 'checkAppendReport.pdf'
