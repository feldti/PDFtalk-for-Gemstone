printing
printOn: aStream
	"  #printLayoutOn: uses computed values, which depend on a clean layout structure.
	During development that's not always the case, and a VW image will lock up if a breakpoint
	is put in any of those computed values. #printLayout uses #printLayoutOn: without #printOn: "

	super printOn: aStream.
	"aStream space.
	self printLayoutOn: aStream."
