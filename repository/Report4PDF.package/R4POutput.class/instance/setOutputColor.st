actions
setOutputColor

	| nameArray alias colorArray | 
	
	self setOutputColorFromArray ifTrue: [^self].
	nameArray := self colorNameTable detect: [:eachColor | eachColor first sameAs: self colorName] ifNone: [nil].
	nameArray isNil ifTrue: [
		alias := self colorNameAliasTable detect: [:eachAlias | eachAlias first sameAs: self colorName] ifNone: [#(#'<none>')].
		nameArray := self colorNameTable detect: [:eachColor | eachColor first sameAs: alias last] ifNone: [nil]].
	nameArray isNil ifTrue: [
		self setOutputColorFromSymbol ifTrue: [^self]].		
	nameArray isNil ifTrue: [
		^self reportError: 'Unknown output color: ', self colorName printString].
	colorArray := nameArray last.
	
	self color: (
		ColorValue 
			red: (colorArray at: 1) 
			green: (colorArray at: 2) 
			blue:  (colorArray at: 3))
