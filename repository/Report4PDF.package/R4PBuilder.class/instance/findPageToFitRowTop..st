actions
findPageToFitRowTop: aLayoutRow

	(aLayoutRow canBuildAt: self currentY limit: self maximumY) ifTrue: [^true].

	[self currentPage nextPage notNil] whileTrue: [
		self currentPage: self currentPage nextPage.
		(aLayoutRow canBuildAt: self currentY limit: self maximumY) ifTrue: [^true]].

	^false
