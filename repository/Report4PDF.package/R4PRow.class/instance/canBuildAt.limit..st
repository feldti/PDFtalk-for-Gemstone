testing
canBuildAt: aNumber limit: aMaximumY

	((aNumber + self spacingTop) roundTo: 0.01) >  (aMaximumY roundTo: 0.01) ifTrue: [^false].
	self sections isEmpty ifTrue: [^true].
	(self canFitOnPageAt: aNumber limit: aMaximumY) ifFalse: [^false].

	^self sections allSatisfy: [:each | 
		each 
			canBuildAt: aNumber + self spacingTop
			limit: aMaximumY]
