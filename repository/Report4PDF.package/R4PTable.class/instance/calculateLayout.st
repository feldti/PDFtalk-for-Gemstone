calculate
calculateLayout

	| count columnCells | 

	count := 0.
	self rows do: [:each | count := count max: each numberOfColumns].
	self headerRow notNil ifTrue: [count := count max: self headerRow sections size].
	self rows do: [:each | each calculateRowSpan].

	self columns: ((1 to: count) asArray collect: [:each | 
		R4PColumn newForParent: self]).

	self columns doWithIndex: [:eachColumn :index | 
		columnCells := self getColumnCellsAt: index.
		eachColumn setCells: columnCells].

	self columns do: [:each | each calculateLayout].
	self adjustColumnWidth. 
	self headerRow notNil ifTrue: [self headerRow calculateLayout].
	self rows do: [:each | each calculateLayout].
