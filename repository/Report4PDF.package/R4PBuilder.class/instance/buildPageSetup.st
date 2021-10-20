build
buildPageSetup

	self currentPage 
			pageWidth: self report pageWidth; 
			pageHeight: self report pageHeight.

	self currentY: self reportPage layoutTop.
	self maximumY: self reportPage layoutBottom.
	self currentPage previousPage isNil ifTrue: [ "only done by first output page"
		self currentPage nextPageNumber: self reportPage nextPageNumber]. 

	self reportPage buildWatermark: self.
	self buildFooter.
	self buildHeader.
