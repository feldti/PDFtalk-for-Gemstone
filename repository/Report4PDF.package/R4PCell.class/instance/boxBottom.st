layout
boxBottom
	
	self spansRows ifTrue: [
		^self boxBottomRowSpan].

	^self parent boxBottom
		- self parent paddingBottom
		- self marginBottom
