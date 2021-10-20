testing
canBuildAt: aNumber limit: aMaximumY
	"at least the first line of text needs to fit, or there will be extra empty spaces at the bottom of the page
	when there is room for spacingTop but not room for first line of text"

	((aNumber + self spacingTop) roundTo: 0.01) >  (aMaximumY roundTo: 0.01) ifTrue: [^false].
	self layoutSections isEmpty ifTrue: [^true].
	(self canFitOnPageAt: aNumber limit: aMaximumY) ifFalse: [^false].

	^self layoutSections first 
			canBuildAt: aNumber + self spacingTop
			limit: aMaximumY
