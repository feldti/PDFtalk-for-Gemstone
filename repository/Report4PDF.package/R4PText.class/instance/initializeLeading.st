initialize-release
initializeLeading
	"after font is set"

	self layoutFont isNil ifTrue: [^self].
	self leading notNil ifTrue: [^self].

	self leading: self fontDescender / 2.0.
 
	self sections do: [:eachStringLayout |
		eachStringLayout
			marginTopAdd: self leading / 2.0;
			marginBottomAdd: self leading / 2.0]
