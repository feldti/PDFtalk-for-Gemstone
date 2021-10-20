layout
boxBottomAt: aPageNumber
	"bypass 'self boxTop + (self nestedUnbuiltLayoutHeight) + self spacingBottom' for table cells ... see super class method"

	| bottom | 

	self isFixedLayout ifTrue: [^self fixedBottom].
	bottom := self layoutBottom - self marginBottom.
	bottom := bottom min: self boxBottomLimit.

	^bottom
