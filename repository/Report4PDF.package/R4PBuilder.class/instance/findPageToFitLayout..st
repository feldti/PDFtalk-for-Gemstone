actions
findPageToFitLayout: aLayout

	(aLayout canBuildAt: self currentY limit: self maximumY) ifTrue: [^true].

	[self currentPage nextPage notNil] whileTrue: [
		self currentPage: self currentPage nextPage.
		(aLayout canBuildAt: self currentY limit: self maximumY) ifTrue: [^true]].

	^false
