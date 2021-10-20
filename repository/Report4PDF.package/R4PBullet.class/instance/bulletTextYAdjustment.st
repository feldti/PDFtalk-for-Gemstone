actions
bulletTextYAdjustment
	"center the bullet based on the text font, so add 1/2 of the difference between the bullet font and text font"

	| bulletHeight textHeight | 
	
	self layoutSections isEmpty ifTrue: [^0].
	bulletHeight := self bulletText fontHeight.
	textHeight := self sections first fontHeight.

	bulletHeight >= textHeight ifTrue: [^0].

	^(textHeight - bulletHeight) / 2.0
