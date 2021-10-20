actions
xImage

	self image isNil ifTrue: [^self reportError: 'No image created from file ', self filename printString].
	^self image asPDF
