calculate
calculateStringRows
	" split strings by cr prior to width calculation "

	self sections copy do: [:each | 
		each calculateStringRows].
