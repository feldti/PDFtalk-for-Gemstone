initialize-release
initialize

	super initialize.

	header := R4PSection newForParent: self.
	footer := R4PSection newForParent: self.
	nextPageNumber := nil.
	outputPages := OrderedCollection new.

	^self
