accessing
layoutSections

	self headerRow notNil ifTrue: [
		self headerRow skipRendering ifFalse: [
			^(Array with: self headerRow) , (super layoutSections)]].

	^super layoutSections
