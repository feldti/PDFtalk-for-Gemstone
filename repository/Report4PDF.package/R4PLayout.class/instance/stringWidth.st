layout
stringWidth

	| stringWidth | 

	stringWidth := 0.
	self sections do: [:each | 
		stringWidth := stringWidth max: each stringWidth].
	^stringWidth
