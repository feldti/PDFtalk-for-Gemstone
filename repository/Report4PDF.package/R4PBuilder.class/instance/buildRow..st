build - layout
buildRow: aLayoutRow  

	self checkFitRowTop: aLayoutRow. 
	self setLayout: aLayoutRow.
	self buildBackground: aLayoutRow.
	self buildBorder: aLayoutRow.

	aLayoutRow setCellHeight. 
	self buildSections: aLayoutRow. 
	self setCurrentPage: aLayoutRow maxOutputPage.

	self checkFitRowBottom: aLayoutRow.
	aLayoutRow built: true.
