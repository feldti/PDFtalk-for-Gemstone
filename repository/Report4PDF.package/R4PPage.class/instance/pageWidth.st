layout
pageWidth
	"allow for override from report settings"	

	^pageWidth ifNil: [super pageWidth]
