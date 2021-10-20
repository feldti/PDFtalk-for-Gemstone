actions
outputErrorMessage: aString
	"add bold text at the top right corner of the page"

	self outputAdd: (
			R4POutputString 
				newForMatrix: #(10 0 0 -10 20 20) 
				font: #'Helvetica-Bold'
				foreground: 'darkred'
				string: aString)
