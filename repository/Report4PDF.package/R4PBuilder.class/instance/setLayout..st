actions
setLayout: aLayout

	aLayout layoutTop: self currentY.
	aLayout setBoxBottomLimit: self maximumY.
	self incrementY: aLayout spacingTop.
