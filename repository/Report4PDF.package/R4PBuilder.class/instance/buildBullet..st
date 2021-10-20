build - layout
buildBullet: aBulletLayout  

	self checkFitSpacingTop: aBulletLayout.

	self resetCurrentYAfter: [
		self setLayout: aBulletLayout.
		self buildBackground: aBulletLayout bulletText.
		self buildBorder: aBulletLayout bulletText.
		self incrementY:  aBulletLayout bulletTextYAdjustment.
		self buildText: aBulletLayout bulletText].

	self buildSection: aBulletLayout.
