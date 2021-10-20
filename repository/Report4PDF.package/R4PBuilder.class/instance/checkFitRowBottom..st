actions
checkFitRowBottom: aLayoutRow
	"a row's cells will create new output pages as required; row's bottom spacing may trigger a page break.
	cell's leave current Y unchanged, so the row has to do the final increment"

	(self findPageToFitRowBottom: aLayoutRow) ifTrue: [
		^self incrementY: aLayoutRow layoutHeight].

	self pageBreak.
	self incrementY: aLayoutRow spacingTop.
