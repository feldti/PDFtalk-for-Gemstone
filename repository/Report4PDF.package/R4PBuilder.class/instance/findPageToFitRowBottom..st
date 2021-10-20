actions
findPageToFitRowBottom: aLayoutRow
	"need to increment Y after all the cells are done"

	(aLayoutRow canEndAtY: self currentY limit: self maximumY) ifTrue: [^true].

	[self currentPage nextPage notNil] whileTrue: [
		self currentPage: self currentPage nextPage.
		(aLayoutRow canEndAtY: self currentY limit: self maximumY) ifTrue: [^true]].

	^false
