layout
boxBottomRowSpan

	| lastRowBottom |

	lastRowBottom := self parent lastRowBottomOf: self.
	^lastRowBottom
		- self marginBottom
