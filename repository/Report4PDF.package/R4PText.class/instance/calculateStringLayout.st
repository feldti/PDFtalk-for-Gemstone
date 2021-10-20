calculate
calculateStringLayout
	" copy of #sections because #calculateNextLineAt: may insert string layouts into #sections"

	| position | 

	position := 0.
	self sections copy do: [:each | 
		position := each calculateNextLineAt: position].
