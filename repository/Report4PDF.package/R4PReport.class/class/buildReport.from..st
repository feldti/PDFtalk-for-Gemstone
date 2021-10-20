documentation
buildReport: aReport from: aStream
	| page |
	page := aReport page.
	page footer text verySmall center string: '<pageX> of <totalX>'.
	[aStream atEnd] whileFalse: [
		| line |
		line := aStream nextLine collect: [:each | self translateCharacter: each].
		page := self buildReport: aReport page: page line: line]
