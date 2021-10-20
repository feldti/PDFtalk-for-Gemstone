build - layout
buildHeader
	
	(self reportPage header layoutHeight) > (self report pageHeight) ifTrue: [
		self error: 'header height is greate than page height: ', 
				((self reportPage header layoutHeight) -> (self report pageHeight)) printString].

	self buildSection: self reportPage header.
	self currentPage setMinimumY.
