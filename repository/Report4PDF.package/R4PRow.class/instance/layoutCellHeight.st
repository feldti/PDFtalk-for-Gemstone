layout
layoutCellHeight
	"excluded row spacingTop and spacingBottom"

	self hasFixedHeight ifTrue: [^self fixedHeight].
	^self nestedLayoutHeight
