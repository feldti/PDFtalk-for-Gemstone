build - layout
buildBorder: aLayout

	aLayout hasBorder ifFalse: [^self].
	self currentPage outputBorder: aLayout at: self currentPageNumber.
