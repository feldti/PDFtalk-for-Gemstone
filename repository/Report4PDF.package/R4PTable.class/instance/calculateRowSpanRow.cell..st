calculate
calculateRowSpanRow: aRow cell: aCell

	| nextRows rowIndex cellIndex |

	aRow = self rows last ifTrue: [^self].
	rowIndex := self rows indexOf: aRow.
	nextRows := self rows 
						copyFrom: rowIndex + 1 
						to: ((rowIndex + aCell rowSpan - 1) min: self rows size).
	cellIndex := aRow indexOfCell: aCell.
	nextRows do: [:each | 
		each insertEmptyCellAt: cellIndex]
