actions
buildWatermark: aBuilder

	self watermarkBasic notNil ifTrue: [
		self watermark buildOutput: aBuilder].
