calculate
columnWidthFor: aColumn
	"treat width percent as fixed width ... can be set by any cell in the rows (last one wins)"
	
	^self widthPercent notNil
		ifTrue: [
			aColumn widthPercent: self widthPercent. "used here as a flag to lock column width"
			self cellWidth]
		ifFalse: [
			aColumn columnWidth max: self cellWidth]
