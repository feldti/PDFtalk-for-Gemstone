accessing
stringWidth
	"for cases where <page> or <total> are replaced"

	^self pdfFont 
			stringWidthOf: self string 
			at: self fontSize
