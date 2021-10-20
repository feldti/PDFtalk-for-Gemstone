initialize-release
initialize

	super initialize.

	nextPage := nil.
	currentY := 0.
	minimumY := 0.
	maximumY := 0.
	output := OrderedCollection new.
	outputPageIndex := 0.

	^self
