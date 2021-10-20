layout
textMatrix
	"Y = the line under the letters and above the descender.  contentTop is the upper edge of the text. "

	^self flip
		ifTrue: [
			self 
				textMatrixFlipScaleX: self layoutFontSize 
				scaleY: self layoutFontSize 
				positionX: self contentLeft
				positionY:  self contentTop + self fontHeightAdjustment]
		ifFalse: [
			self 
				textMatrixScaleX: self layoutFontSize 
				scaleY: self layoutFontSize 
				positionX: self contentLeft
				positionY:  self contentTop + self fontHeightAdjustment]
