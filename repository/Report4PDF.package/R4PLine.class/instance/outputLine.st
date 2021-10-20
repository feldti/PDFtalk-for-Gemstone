output
outputLine

	^R4POutputLine 
		newForStartPoint:  (self contentLeft @ self contentTop) 
		endPoint: (self contentRight @ self contentTop) 
		width: self lineWidth
		color: self layoutForeground
