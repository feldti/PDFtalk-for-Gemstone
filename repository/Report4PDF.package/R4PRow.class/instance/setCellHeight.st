build - layout
setCellHeight

	| cellHeight | 

	cellHeight :=  self layoutCellHeight.
	self sections do: [:each | each cellHeight: cellHeight]
