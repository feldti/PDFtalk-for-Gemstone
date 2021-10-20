layout
contentRightOf: aCell
	"for cells that span columns"

	| index  column | 

	index := self columns indexOf: aCell column.
	index = 0 ifTrue: [^self reportError: 'PRwTable>>contentRightOf: ... starting column of a cell is not found in the table'].
	index := index + aCell columnSpan - 1.
	column := self columns at: index ifAbsent: [
		self error: 'PRwTable>>contentRightOf: ... column span exceeds number of columns created for table'].
	^column contentRight
