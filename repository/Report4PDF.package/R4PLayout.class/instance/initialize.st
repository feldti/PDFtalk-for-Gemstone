initialize-release
initialize

	super initialize.
	self initializeSections.

	align := nil.
	border := Array with: 0 with: 0 with: 0 with: 0.
	built := false.
	exclude := nil.
	fixedBox := Array with: 0 with: 0 with: 0 with: 0.
	font := nil.
	fontSize := nil.
	fitOnPage := false.
	include := nil.
	layoutTop := nil.
	boxBottomLimit := nil.
	boxHeightUsed := Array new.
	margin := Array with: 0 with: 0 with: 0 with: 0.
	noWrapSet := nil.
	newPageBlock := [false].
	padding := Array with: 0 with: 0 with: 0 with: 0.
	parent := nil.
	spacing := nil.
	truncated := nil.
	verticalAlign := nil.
	widthPercent := nil.

	^self
