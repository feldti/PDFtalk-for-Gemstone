layout
layoutRight

	self spansColumns ifTrue: [
		^self parent layoutRightOf: self].

	^self layoutLeft 
		+ self columnWidth
