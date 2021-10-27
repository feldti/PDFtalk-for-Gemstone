actions
checkConcatenatePDFs
	" self new checkConcatenatePDFs"

	| pdf document dir |
	document := (PDFtalk at: #Document) new.
	#('exampleAlignCenter.pdf' 'exampleBullet.pdf' 'exampleImageGIF.pdf') do: [:each |
		pdf := (PDFtalk at: #File) read: each asFilename.
		pdf root pagesDo: [:page | document root addPage: page]].
	dir := (GsFile _expandEnvVariable: 'HOME' isClient: false) , '/'.
	document saveAs: dir , 'exampleContatenatedPDFs.pdf'
