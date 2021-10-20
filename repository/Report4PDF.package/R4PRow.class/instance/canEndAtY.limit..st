testing
canEndAtY: aNumber limit: aMaximumY

	^((aNumber + self layoutHeight) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)
