output
outputBorderTop

	self borderTop = 0 ifTrue: [^nil].

	^R4POutputLine 
		newForStartPoint: self outputBoxLeft @ self boxTop
		endPoint: self outputBoxRight @ self boxTop 
		width: self borderTop
