actions
checkFitImage: aLayoutImage

	aLayoutImage outputOnNewPage ifFalse: [
		(aLayoutImage canBuildAt: self currentY limit: self maximumY) ifTrue: [^self]].

	(aLayoutImage layoutHeight > aLayoutImage pageHeight) ifTrue: [
		^self reportError: 'Image cannot fit on page'].

	self pageBreak.
	self incrementY: aLayoutImage spacingTop.
	aLayoutImage layoutTop: self currentY.

	aLayoutImage parent buildNewPageParent: self.
	aLayoutImage parent buildNextPageParent: self.
