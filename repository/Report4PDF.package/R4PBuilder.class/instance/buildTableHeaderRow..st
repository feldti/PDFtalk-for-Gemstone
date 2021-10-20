build - layout
buildTableHeaderRow: aLayoutTable
	"sent when a table with repeating headings has nested cells that trigger a page break.
	set minimum Y so that the top of the next columns line up, since they don't trigger the header rendering"

	self checkFitSpacingTop: aLayoutTable.
	self setLayout: aLayoutTable.

	aLayoutTable headerRow notNil ifTrue: [
		aLayoutTable headerRow setBuiltToFalse. 
		self buildRow: aLayoutTable headerRow].

	self currentPage setMinimumY.
