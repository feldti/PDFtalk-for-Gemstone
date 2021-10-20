testing
canBuildAt: aNumber limit: aMaximumY

	(((aNumber + self bulletTextYAdjustment) roundTo: 0.01)
		 <= 
			(aMaximumY roundTo: 0.01)) ifFalse: [^false].

	self sections isEmpty ifTrue: [^true].
	^self sections first 
			canBuildAt: aNumber + self spacingTop
			limit: aMaximumY
