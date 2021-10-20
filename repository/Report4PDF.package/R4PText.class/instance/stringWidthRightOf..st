actions
stringWidthRightOf: aStringLayout

	| total sectionIndex | 

	aStringLayout lineBreak ifTrue: [^0].
	total := 0.
	sectionIndex := self sections indexOf: aStringLayout.
	sectionIndex + 1 to: self sections size do: [:index | 
		| each | 
		each := self sections at: index.
		total := total + (each stringWidth).
		each lineBreak ifTrue: [^total]].

	^total
