actions
addOutputAll: aCollection

	aCollection do: [:each | 
		self currentPage outputAdd: each]
