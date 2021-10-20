output
outputBorderBottomAt: aPageNumber

	| bottom | 

	self borderBottom = 0 ifTrue: [^nil].
	bottom := self boxBottomAt: aPageNumber. 

	^R4POutputLine 
		newForStartPoint: (self outputBoxLeft @  bottom) 
		endPoint: (self outputBoxRight @  bottom) 
		width: self borderBottom
