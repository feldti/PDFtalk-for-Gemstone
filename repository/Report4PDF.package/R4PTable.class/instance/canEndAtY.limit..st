testing
canEndAtY: aNumber limit: aMaximumY

	^((aNumber + self spacingBottom) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)
