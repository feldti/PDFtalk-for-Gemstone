accessing
outputPagesAdd: aPage

	self outputPages add: aPage.
	aPage reportPage: self.
