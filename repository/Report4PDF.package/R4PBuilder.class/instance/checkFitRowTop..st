actions
checkFitRowTop: aLayoutRow
	"we have cases where = failed on floats that should be equal"

	aLayoutRow outputOnNewPage ifFalse: [
		(self findPageToFitRowTop: aLayoutRow) ifTrue: [^self]].

	self pageBreak.
	aLayoutRow layoutTop: self currentY.
	aLayoutRow parent buildNewPageParent: self.
	aLayoutRow parent buildNextPageParent: self.
