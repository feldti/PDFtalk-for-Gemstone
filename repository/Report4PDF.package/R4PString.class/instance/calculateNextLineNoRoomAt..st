calculate
calculateNextLineNoRoomAt: aPosition
	"This text cannot fit on the remaining line, so either insert a CR, or indicate that there is truncated text "

	| newStringLayout | 

	aPosition = 0 ifTrue: [
		self parent containsTruncatedText: true.
		^0]. 

	newStringLayout := self class 
								newForParent: self parent 
								string: '' 
								leading: self parent leading
								font: self layoutFont.
	newStringLayout cr.
	self parent addStringLayout: newStringLayout before: self.

	^self calculateNextLineAt: 0
