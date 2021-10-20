layout
layoutSections

	^self flip
		ifTrue: [super layoutSections reverse]
		ifFalse: [super layoutSections]
