build - layout
buildCell: aLayoutCell
	"reset currentY because the cell contents may be multi-line ... contains truncated text if rowSpan > 1 and height > total row height"

	self resetCurrentYAfter: [
		self checkFitSpacingTop: aLayoutCell.
		self setLayout: aLayoutCell.
		self buildBackground: aLayoutCell.
		self buildBorder: aLayoutCell.
		self buildSections: aLayoutCell.
		self addOutputAll: aLayoutCell outputTruncated.
		aLayoutCell outputPage: self currentPage; built: true].
