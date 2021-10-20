testing
canFitOnPageAt: aNumber limit: aMaximumY

	self layoutFitOnPage ifFalse: [^true]. "default"

	^((aNumber + self layoutHeight) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)
