testing
canEndAtY: aNumber limit: aMaximumY
	"if there is room on the page, leave room for the bottom spacing of this text"

	^((aNumber + self spacingBottom) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)
