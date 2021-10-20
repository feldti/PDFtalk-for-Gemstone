instance creation
newForLayout: aLayout pageNumber: aPageNumber

	^self new
		left: aLayout boxLeft; 
		bottom: (aLayout boxBottomAt: aPageNumber); 
		width: aLayout boxWidth; 
		height: (aLayout boxHeightAt: aPageNumber); 
		setColor: aLayout layoutBackground; 
		yourself
