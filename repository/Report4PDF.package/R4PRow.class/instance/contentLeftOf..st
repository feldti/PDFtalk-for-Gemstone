layout
contentLeftOf: aCell

	| total | 

	total := self contentLeft.
	self layoutSections do: [:each | 
		each = aCell ifTrue: [^total].
		total := total + each columnWidth].

	^total
