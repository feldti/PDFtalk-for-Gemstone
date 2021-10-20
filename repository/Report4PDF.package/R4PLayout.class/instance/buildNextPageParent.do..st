actions
buildNextPageParent: aBuilder do: aBlock
	"triggered on a page break; parent layouts may set top spacing or render borders so we need to trigger that here.
	#setLayout: will increment current Y.  Tables will return to previous layouts, so set the current Y back.
	aBlock is used by sections that require updated Y from the parent, like a cell in a row"


	self parent buildNextPageParent: aBuilder do: [
		| previousY | 
		previousY := self  layoutTop. 
		aBuilder setLayout: self.
		aBuilder buildBackground: self.
		aBuilder buildBorder: self.
		aBlock notNil ifTrue: [aBlock value].
		self layoutTop: previousY].
