testing
canBuildAt: aNumber limit: aMaximumY

	(self canFitOnPageAt: aNumber limit: aMaximumY) ifFalse: [^false].

	^((aNumber + self spacingTop) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)
