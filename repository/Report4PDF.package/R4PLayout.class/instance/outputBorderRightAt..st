output
outputBorderRightAt: aPageNumber

	self borderRight = 0 ifTrue: [^nil].

	^R4POutputLine 
		newForStartPoint: (self boxRight @  self boxTop) 
		endPoint: (self boxRight @  (self boxBottomAt: aPageNumber)) 
		width: self borderRight
