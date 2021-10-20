build - layout
buildFixedSection: aSection

	self resetCurrentYAfter: [
		self currentY: aSection fixedTop.
		self incrementY: aSection spacingTop.
		self buildBackground: aSection.
		self buildBorder: aSection.
		self buildSections: aSection].
