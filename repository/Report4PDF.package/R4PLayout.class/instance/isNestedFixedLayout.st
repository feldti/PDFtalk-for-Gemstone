testing
isNestedFixedLayout

	self isFixedLayout ifTrue: [^true].
	^self parent isNestedFixedLayout
