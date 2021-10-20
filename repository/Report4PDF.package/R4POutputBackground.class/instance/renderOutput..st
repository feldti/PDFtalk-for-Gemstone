actions
renderOutput: aRenderer
	"set the fill color back to black when done"

	aRenderer fillColor: self color.
	aRenderer addRectangleLeft: self left 
				bottom: self bottom -  self height
				width: self width 
				height: self height.
	aRenderer fill.
	aRenderer fillColor: self outputBlack.
