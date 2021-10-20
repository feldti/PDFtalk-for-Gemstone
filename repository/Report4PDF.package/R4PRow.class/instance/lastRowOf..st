accessing
lastRowOf: aCell
	"only applies to rowSpan cells"

	^self parent lastRowOf: aCell row: self
