build - layout
buildSection: aSection

	aSection isFixedLayout ifTrue: [
		^self buildFixedSection: aSection].

	self checkFitSpacingTop: aSection.
	self setLayout: aSection.
	self buildBackground: aSection.
	self buildBorder: aSection.
	self buildSections: aSection.
	aSection built: true.
