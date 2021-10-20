calculate
calculateMaxFontHeight

	self sections size = 1 ifTrue: [^self].

	self sections do: [:each | 
		self maxFontHeight: (self maxFontHeight max: each fontAscender)].
