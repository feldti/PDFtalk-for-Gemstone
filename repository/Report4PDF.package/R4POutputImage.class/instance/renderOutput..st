actions
renderOutput: aRenderer

	aRenderer isolatedDo: [
		aRenderer concat: self matrix.
		aRenderer paintXObject: self xImage].
