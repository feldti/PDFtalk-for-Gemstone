calculate
totalRowHeightOf: aCell row: aRow

	| nextRows rowIndex total |

	aRow = self rows last ifTrue: [^aRow layoutHeight].
	aCell rowSpan = 1 ifTrue: [^aRow layoutHeight].
	rowIndex := self rows indexOf: aRow.
	nextRows := self rows 
						copyFrom: rowIndex 
						to: ((rowIndex + aCell rowSpan - 1) min: self rows size).
	total := 0.
	nextRows do: [:each | 
		total := total + each layoutHeight].
	^total
