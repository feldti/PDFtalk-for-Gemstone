actions
addTruncatedString

	| outputWidth list | 

	outputWidth := self contentWidth - 10.
	list := self sections.
	self sections: OrderedCollection new.
	list do: [:eachSection | 
		outputWidth := eachSection buildTruncatedString: outputWidth.
		self sections add: eachSection.
		outputWidth > 0 ifFalse: [^self]].
