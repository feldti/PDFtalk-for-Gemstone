layout
boxHeightAt: aPageNumber

	^(self boxBottomAt: aPageNumber)
		- self boxTop
