actions
renderOutput: aRenderer

	aRenderer linewidth: self width.
	aRenderer moveTo: self startPoint.
	aRenderer lineTo: self endPoint.
	self color notNil ifTrue: [aRenderer strokeColor: self color].
	aRenderer stroke.
	self color notNil ifTrue: [aRenderer strokeColor: self outputBlack].
