output
buildTruncatedOutputFor: aLayout

	self setTruncatedImageFor: aLayout. 

	^R4POutputImage 
		newForMatrix: self imageMatrix 
		xImage: self xImage
