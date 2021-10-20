calculate
calculateLayout
	"if a cell spans rows, we want word wrap to be calculated across the rows"

	self columnWidth: 0.
	self cells do: [:eachCell | 
		self widthPercent isNil ifTrue: [  "if a cell in the column has a width percent it sets this value; ignore the remaining cells"
			eachCell isSingleColumn ifTrue: [
				eachCell isSingleRow ifTrue: [
					self columnWidth: (eachCell columnWidthFor: self)]]]].

	super calculateLayout
