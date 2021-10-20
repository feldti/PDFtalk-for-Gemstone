accessing
extent: aPoint
	
	self fixedBottom: self fixedTop + aPoint y.
	self fixedRight: self fixedLeft + aPoint x.
