layout
contentLeftOf: aColumn

	| total | 

	total := self contentLeft.
	self columns do: [:each | 
		each = aColumn ifTrue: [^total].
		total := total + each columnWidth].

	^total
