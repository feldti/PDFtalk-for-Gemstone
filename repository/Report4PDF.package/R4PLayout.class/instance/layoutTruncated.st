layout
layoutTruncated

	^self truncated ifNil: [self parent layoutTruncated]
