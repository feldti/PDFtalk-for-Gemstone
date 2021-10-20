calculate
calculateTruncatedText

	self layoutNoWrap ifFalse: [^self containsTruncatedText: false].
	self initialStringWidth <= super contentWidth ifTrue: [^self containsTruncatedText: false].

	self containsTruncatedText: true
