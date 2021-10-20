actions
stringWidthLeftOf: aStringLayout

	| total | 

	aStringLayout == self sections first ifTrue: [^0].
	total := 0.
	self sections do: [:each | 
		each == aStringLayout ifTrue: [^total].
		total := each lineBreak 
			ifTrue: [0]
			ifFalse: [total + each stringWidth]].

	self error: 'Expected string layout not found in text layout'.
