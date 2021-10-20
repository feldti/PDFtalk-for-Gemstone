layout
contentLeft

	self isLeftJustified ifTrue: [^super contentLeft + self positionX ].

	^self parent getPositionX: self
