testing
canBuildAt: aNumber limit: aMaximumY
	"is there room for the first section?"

	((aNumber + self spacingTop) roundTo: 0.01) >  (aMaximumY roundTo: 0.01) ifTrue: [^false].
	self layoutSections isEmpty ifTrue: [^true].
	(self canFitOnPageAt: aNumber limit: aMaximumY) ifFalse: [^false].

	^self sections first 
			canBuildAt: aNumber + self spacingTop
			limit: aMaximumY
