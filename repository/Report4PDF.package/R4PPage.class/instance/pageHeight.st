layout
pageHeight
	"allow for override from report settings"	

	^pageHeight ifNil: [super pageHeight]
