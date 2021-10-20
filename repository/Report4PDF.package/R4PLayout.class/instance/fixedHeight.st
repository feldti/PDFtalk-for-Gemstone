accessing
fixedHeight

	^self fixedBottom - (self fixedTop ifNil: [0])
