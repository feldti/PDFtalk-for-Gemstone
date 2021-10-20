layout
layoutFitOnPage

	self fitOnPage ifTrue: [^true].
	^self parent layoutFitOnPage
