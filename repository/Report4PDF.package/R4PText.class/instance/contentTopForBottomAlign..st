layout
contentTopForBottomAlign: aLayout
	"text can hold mulltipe strings"

	| top adjustment | 

	top := (self parent contentBottom - self layoutHeight) max: self layoutTop.
	adjustment := ((self sections indexOf: aLayout) - 1) * (self fontHeight + self leading). 
	^top + adjustment
