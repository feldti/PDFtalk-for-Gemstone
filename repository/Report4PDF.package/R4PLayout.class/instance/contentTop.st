layout
contentTop

	self isFixedLayout ifTrue: [^self fixedTop + self paddingTop].
	"self isNestedFixedLayout ifTrue: [^self fixedContentTop]."

	^(self layoutTop ifNil: [0])
		+ self spacingTop
