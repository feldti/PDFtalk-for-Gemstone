calculate
lastRowBottomOf: aCell row: aRow
	"for cells that span rows ... the next rows have not been processed yet, so they don't know their layout top, so we use each row's layout height"

	| nextRows rowIndex bottom |

	aRow = self rows last ifTrue: [^aRow boxBottom].
	rowIndex := self rows indexOf: aRow.
	nextRows := self rows 
						copyFrom: rowIndex + 1 
						to: ((rowIndex + aCell rowSpan - 1) min: self rows size).
	bottom := aRow layoutBottom.
	nextRows do: [:each | 
		bottom := bottom + each layoutHeight].
	^bottom
