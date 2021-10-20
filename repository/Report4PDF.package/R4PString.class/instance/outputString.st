output
outputString

	^R4POutputString 
			newForMatrix: self textMatrix 
			font: self layoutFont
			fontSize: self layoutFontSize 
			align: self layoutAlign
			originalWidth: self stringWidth
			foreground: self layoutForeground
			string: self string
