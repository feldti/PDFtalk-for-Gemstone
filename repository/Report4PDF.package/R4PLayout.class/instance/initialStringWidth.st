layout
initialStringWidth
	"prior to word wrap"

	| stringWidth | 

	stringWidth := 0.
	self sections do: [:each | 
		stringWidth := stringWidth max: (
			each initialStringWidth
			+ each spacingLeft 
			+ each spacingRight)].
	^stringWidth
