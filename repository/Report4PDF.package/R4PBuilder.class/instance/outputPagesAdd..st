actions
outputPagesAdd: aPage

	self outputPages add: aPage.
	aPage outputPageIndex: (self outputPages indexOf: aPage).
	self reportPage outputPagesAdd: aPage.
