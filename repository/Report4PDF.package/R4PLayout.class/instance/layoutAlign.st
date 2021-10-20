layout
layoutAlign

	^self align ifNil: [self parent layoutAlign]
