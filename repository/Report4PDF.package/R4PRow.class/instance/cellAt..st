accessing
cellAt: anIndex
	"previous cells with columnSpan > 1 will affect the answer"

	| count | 

	self sections isEmpty ifTrue: [^nil].

	count := 1.
	self sections do: [:eachCell | 
		count = anIndex ifTrue: [^eachCell].
		count := count + eachCell columnSpan].

	^nil
