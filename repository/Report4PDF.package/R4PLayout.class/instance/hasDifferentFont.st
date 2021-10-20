testing
hasDifferentFont

	^self layoutFont ~= self parent layoutFont or: [
		self parent hasDifferentFont]
