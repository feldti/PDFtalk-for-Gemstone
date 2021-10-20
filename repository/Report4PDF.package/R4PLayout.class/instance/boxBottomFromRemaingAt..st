layout
boxBottomFromRemaingAt: aPageNumber

	^self boxTop 
		+ (self boxHeightRemainingAt: aPageNumber)
