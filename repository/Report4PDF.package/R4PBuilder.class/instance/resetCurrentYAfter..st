actions
resetCurrentYAfter: aBlock

	| previousY previousPage | 

	previousY := self currentY. 
	previousPage := self currentPage.

	aBlock value.

	self currentPage resetCurrentY.
	self currentPage: previousPage.
	self currentY: previousY.
