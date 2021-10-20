actions
adjustColumnWidth
	"factor out fixed column widths before adjusting the rest ... truncate if not enough room"

	| totalVariable totalFixed ratio columnWidth | 

	self contentWidth = 0 ifTrue: [^self reportError: 'Cannot calculate column widths because content width of table is zero.'].
	totalVariable := self variableColumnWidth.
	totalFixed := self fixedColumnWidth.
	(totalVariable + totalFixed) < self contentWidth ifTrue: [^self].

	columnWidth := self contentWidth - totalFixed.
	columnWidth < 0 ifTrue: [
		self reduceColumnWidths ifFalse: [
			^self adjustColumnWidthTruncated: totalVariable + totalFixed]].
	columnWidth = 0 ifTrue: [^self error: 'Column width is zero... too many columns'].
	totalVariable := self variableColumnWidth.
	totalFixed := self fixedColumnWidth.
	ratio := (columnWidth / totalVariable) asFloat.
	ratio = 0 ifTrue: [^self error: 'Table column adjustment ratio is zero... too many columns'].
	self columns do: [:each | 
		each layoutNoWrap ifFalse: [
			each columnWidth: each columnWidth * ratio]]
