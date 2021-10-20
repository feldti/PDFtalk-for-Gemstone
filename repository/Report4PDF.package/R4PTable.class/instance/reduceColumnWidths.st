actions
reduceColumnWidths
	"not enough room, so first try to narrow wide variable columns"

	| totalFixed originalWidth index count | 

	originalWidth := self contentWidth.
	totalFixed := self fixedColumnWidth.
	count := self variableColumns size.
	index := 1.
	[index <= count] whileTrue: [
		(self variableColumnWidth + totalFixed) <= originalWidth ifTrue: [^true].
		index := self reduceColumnWidthsAt: index].
	^false
