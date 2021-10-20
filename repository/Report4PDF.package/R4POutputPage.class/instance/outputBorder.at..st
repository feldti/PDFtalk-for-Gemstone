actions
outputBorder: aLayout at: aPageNumber

	self outputAdd: aLayout outputBorderTop.
	self outputAdd: (aLayout outputBorderRightAt: aPageNumber).
	self outputAdd: (aLayout outputBorderBottomAt: aPageNumber).
	self outputAdd: (aLayout outputBorderLeftAt: aPageNumber).
