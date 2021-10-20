actions
stringWidthTotalOf: aStringLayout

	| total sectionIndex | 

	total := self stringWidthLeftOf: aStringLayout.
	sectionIndex := self sections indexOf: aStringLayout.
	sectionIndex to: self sections size do: [:index | 
		| each | 
		each := self sections at: index.
		total := total + aStringLayout stringWidth.
		each lineBreak ifTrue: [^total]].

	^total
