layout
layoutHeight
	"row & cell don't used fixed layout height"

	^self isFixedLayout 
		ifTrue: [self fixedBottom - self fixedTop]
		ifFalse: [self layoutHeightCalculated]
