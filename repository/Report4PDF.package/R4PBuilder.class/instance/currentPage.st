accessing - output
currentPage
	"currentPage can be set to a previous page for table output; normally it is nil"

	^currentPage ifNil: [self outputPages last]
