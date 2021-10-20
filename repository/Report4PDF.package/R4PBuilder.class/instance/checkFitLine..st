actions
checkFitLine: aLayoutLine

	aLayoutLine outputOnNewPage ifFalse: [
		(aLayoutLine canBuildAt: self currentY limit: self maximumY) ifTrue: [^self]].

	self pageBreak.
	self incrementY: aLayoutLine spacingTop.
	aLayoutLine layoutTop: self currentY.

	aLayoutLine parent buildNewPageParent: self.
	aLayoutLine parent buildNextPageParent: self.
