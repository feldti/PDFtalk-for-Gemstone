layout
lastRowBottomOf: aCell
	"for cells that span rows"

	^self parent lastRowBottomOf: aCell row: self
