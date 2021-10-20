actions
setTruncatedImageFor: aLayout
	self image: self truncatedXImage.
	self left.
	self fixedTop: aLayout layoutBottom - 14.
	self fixedBottom: aLayout layoutBottom - 2.
	self fixedLeft: aLayout contentRight - 14.
	self fixedRight: aLayout contentRight - 2.
