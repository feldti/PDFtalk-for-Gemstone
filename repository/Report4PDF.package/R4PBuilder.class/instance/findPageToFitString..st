actions
findPageToFitString: aLayoutString

	(aLayoutString canBuildAt: self currentY limit: self maximumY) ifTrue: [^true].

	[self currentPage nextPage notNil] whileTrue: [
		self currentPage resetCurrentY.
		self currentPage: self currentPage nextPage.
		(aLayoutString canBuildAt: self currentY limit: self maximumY) ifTrue: [
			aLayoutString parent buildNextPageParent: self.
			^true]].

	^false
