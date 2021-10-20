accessing
origin: aPoint
	
	self fixedTop: aPoint y.
	self fixedLeft: aPoint x.

	self fixedRight ~= 0 ifTrue: [
		self fixedRight: self fixedRight + aPoint x].

	self fixedBottom ~= 0 ifTrue: [
		self fixedBottom: self fixedBottom + aPoint y].
