layout
layoutRightOf: aCell
	"for cells that span columns"

	| index  column | 

	index := self columns indexOf: aCell column.
	index = 0 ifTrue: [^self reportError: 'PRwTable>>contentRightOf: ... starting column of a cell is not found in the table'].
	index := index + aCell columnSpan - 1.
	column := self columns at: index.
	^column layoutRight
