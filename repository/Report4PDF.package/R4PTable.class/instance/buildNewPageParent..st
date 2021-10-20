actions
buildNewPageParent: aBuilder

	self repeatHeadingSet ifTrue: [
		self headerRow notNil ifTrue: [
			aBuilder buildTableHeaderRow: self]].
	
	super buildNewPageParent: aBuilder
