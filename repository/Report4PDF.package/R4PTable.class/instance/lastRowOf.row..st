calculate
lastRowOf: aCell row: aRow
	"used for cells with rowSpan"

	| rowIndex |

	aRow = self rows last ifTrue: [^aRow].
	rowIndex := self rows indexOf: aRow.
	^self rows at: ((rowIndex + aCell rowSpan - 1) min: self rows size)
