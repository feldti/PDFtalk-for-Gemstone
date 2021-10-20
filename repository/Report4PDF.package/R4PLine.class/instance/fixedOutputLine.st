output
fixedOutputLine

	^R4POutputLine 
		newForStartPoint: self origin 
		endPoint: self endPoint 
		width: self lineWidth
		color: self layoutForeground
