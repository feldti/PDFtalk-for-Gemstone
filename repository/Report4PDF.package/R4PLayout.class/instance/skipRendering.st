testing
skipRendering

	| pageNumber |

	self builder isNil ifTrue: [^false].
	pageNumber := self builder currentPageNumber.
	pageNumber = 0 ifTrue: [^false].

	(self excludeOnPage: pageNumber) ifTrue: [^true].
	(self includeOnPage: pageNumber) ifFalse: [^true].

	^false
