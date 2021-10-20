actions
setCells: anArray

	self cells: anArray.
	anArray do: [:eachCell | 
		eachCell column: self]
