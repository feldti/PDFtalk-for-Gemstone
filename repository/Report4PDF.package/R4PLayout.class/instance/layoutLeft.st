layout
layoutLeft

	self isFixedLayout ifTrue: [
		^self fixedLeft].
	
	^self parent contentLeft
