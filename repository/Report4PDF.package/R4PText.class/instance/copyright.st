actions - add
copyright

	| lastString | 

	self sections isEmpty ifTrue: [
		self string: self stringClass new].
	lastString := self sections last string.
	lastString := lastString copyWith: (Character value: 169).
	self sections last string: lastString
