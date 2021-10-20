actions
reduceColumnWidthsAt: anIndex

	| list | 

	list := self variableColumns. 
	1 to: anIndex do: [:index | 
		| eachColumn | 
		eachColumn := list at: index.
		eachColumn columnWidth: (eachColumn columnWidth * 0.90 )].

	^anIndex + 1
