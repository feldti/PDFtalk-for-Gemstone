actions
setOutputColorFromArray

	self colorName isNil ifTrue: [^false].
	self colorName isString ifTrue: [^false].

	self colorName size = 3 ifFalse: [
		^self reportError: 'Invalid output color array. Expected three values: ', self colorName printString].

	self color: (
		ColorValue 
			red: (self colorName at: 1) 
			green: (self colorName at: 2) 
			blue:  (self colorName at: 3)).

	^true
