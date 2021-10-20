calculate
calculateLayout

	self bulletText calculateLayout.
	self sections do: [:each | 
		each marginLeft: self bulletText initialStringWidth 
							+ self bulletText fontBoxWidth
							+ self bulletText marginLeft].
	super calculateLayout.
