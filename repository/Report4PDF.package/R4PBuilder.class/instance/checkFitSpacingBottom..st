actions
checkFitSpacingBottom: aLayoutText

	aLayoutText isFixedLayout ifTrue: [^self].

	(aLayoutText 
		canEndAtY: self currentY 
		limit: self maximumY) 
			ifTrue: [self incrementY: aLayoutText spacingBottom]
			ifFalse: [self pageBreak]
