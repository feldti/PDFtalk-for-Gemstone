documentation
buildImage: aString page: aPage
	aPage image image: (self perform: (aString , 'XImage') asSymbol).
	^aPage
