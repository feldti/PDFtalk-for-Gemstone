layout
layoutFont

	^self font ifNil: [self parent layoutFont]
