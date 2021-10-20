layout
contentWidth

	self layoutNoWrap ifTrue: [
		self layoutTruncated ifFalse: [
			^(self initialStringWidth) max: (super contentWidth)]].

	^super contentWidth
