actions
pageBreak
	"A 2nd page break can be triggered from a table cell if it's neighbour already triggered one.
	aBlock is only intended for 'new' pages, not when revisiting 'next' pages"

	| nextPage | 

	nextPage := self currentPage createNextPageOutput. 
	self currentPage resetCurrentY.
	self clearCurrentPage.
	self outputPagesAdd: nextPage.
	self buildPageSetup.
