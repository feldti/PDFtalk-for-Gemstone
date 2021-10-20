actions - add
trademark

	| lastString | 

	self sections isEmpty ifTrue: [
		self string: self stringClass new].
	lastString := self sections last string.
	lastString := lastString copyWith: (Character value: 174).
	self sections last string: lastString
