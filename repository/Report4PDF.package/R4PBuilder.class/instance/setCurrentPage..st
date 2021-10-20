actions
setCurrentPage: anOutputPage
	"a nested table may need to set the currentPage to a page that is not the 'largest' 
	if outputPages is emtpy at this point, we have an error"

	self outputPages last == anOutputPage ifTrue: [	
		self clearCurrentPage].

	self currentPage: anOutputPage.
