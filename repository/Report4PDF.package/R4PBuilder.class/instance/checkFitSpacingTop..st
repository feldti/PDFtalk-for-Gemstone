actions
checkFitSpacingTop: aLayout
	"make sure there is room from top spacing; each line of text will check to see if it fits and may trigger a page break"

	aLayout outputOnNewPage ifFalse: [
		(self findPageToFitLayout: aLayout) ifTrue: [^true]].

	self pageBreak.
	self incrementY: aLayout spacingTop.
	aLayout layoutTop: self currentY.
	aLayout parent buildNewPageParent: self.
	aLayout parent buildNextPageParent: self.
	^false
