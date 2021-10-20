layout
contentLeft

	self isFixedLayout ifTrue: [
		^self fixedLeft + self paddingLeft].

	self parent isNil ifTrue: [
		^self spacingLeft].
	
	^self parent contentLeft 
		+ self spacingLeft
