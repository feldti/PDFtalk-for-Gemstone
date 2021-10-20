actions
calculateLayout

	self header calculateLayout.
	self footer calculateLayout.
	
	self watermarkBasic notNil ifTrue: [
		self watermark calculateLayout].

	super calculateLayout
