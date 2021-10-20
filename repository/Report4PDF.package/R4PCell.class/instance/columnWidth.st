calculate
columnWidth
	
	self spansColumns ifTrue: [
		^(self layoutRight - self layoutLeft)].

	^self column columnWidth
