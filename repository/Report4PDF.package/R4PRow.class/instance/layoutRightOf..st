layout
layoutRightOf: aCell
	"for cells that span columns"

	^self parent layoutRightOf: aCell
