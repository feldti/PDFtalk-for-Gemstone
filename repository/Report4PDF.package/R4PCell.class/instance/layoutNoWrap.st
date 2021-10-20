layout
layoutNoWrap

	^super layoutNoWrap or: [
		self sections anySatisfy: [:each | each noWrapSet == true]]
