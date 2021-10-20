layout
initialStringWidth
	" used for no-wrap, so assume no cr"

	| total | 

	total := 0.
	self sections do: [:each | 
		total := total + each stringWidth].
	^total
