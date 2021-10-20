layout
boxBottomAt: aPageNumber

	| bottom | 

	self isFixedLayout ifTrue: [^self fixedBottom].
	bottom := self layoutBottom - self marginBottom.
	bottom := bottom min: self boxBottomLimit.
	bottom := bottom min: (self boxTop + (self nestedLayoutHeight) + self spacingBottom).

	^bottom
