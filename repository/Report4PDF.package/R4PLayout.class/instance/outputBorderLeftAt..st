output
outputBorderLeftAt: aPageNumber

	self borderLeft = 0 ifTrue: [^nil].

	^R4POutputLine 
		newForStartPoint: (self boxLeft @  (self boxBottomAt: aPageNumber)) 
		endPoint: (self boxLeft @  self boxTop) 
		width: self borderLeft
