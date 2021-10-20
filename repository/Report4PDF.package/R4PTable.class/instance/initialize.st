initialize-release
initialize

	super initialize.
	
	columns := OrderedCollection new.
	cellPadding :=  Array with: 0 with: 0 with: 0 with: 0.
	cellSpacing :=  Array with: 0 with: 0 with: 0 with: 0.
	cellBorder :=  Array with: 0 with: 0 with: 0 with: 0.
	repeatHeadingSet := false.

	^self
