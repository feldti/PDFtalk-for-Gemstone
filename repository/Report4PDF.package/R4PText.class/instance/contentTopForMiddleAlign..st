layout
contentTopForMiddleAlign: aLayoutString
	"text can hold mulltipe strings"

	| top adjustment | 

	top := self parent contentTopForMiddleAlign: self.
	adjustment := self layoutHeightOfSectionsAbove: aLayoutString.
	^(top + adjustment ) max: self contentTop
