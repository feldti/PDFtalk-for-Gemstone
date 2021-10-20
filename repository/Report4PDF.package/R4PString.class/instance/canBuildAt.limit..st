testing
canBuildAt: aNumber limit: aMaximumY
	"text bottom margin + bottom padding should be included in the page break calculation"

	^((aNumber + self layoutHeight + self parent spacingBottom) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)
