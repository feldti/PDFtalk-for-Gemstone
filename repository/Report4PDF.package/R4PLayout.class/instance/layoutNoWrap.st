layout
layoutNoWrap

	^self noWrapSet ifNil: [self parent layoutNoWrap]
