calculate
calculateRowSpan

	self spansRows ifFalse: [^self].
	self parent calculateRowSpanCell: self
