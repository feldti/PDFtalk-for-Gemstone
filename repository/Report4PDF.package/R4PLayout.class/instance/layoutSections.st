layout
layoutSections

	^self sections reject: [:each | each skipRendering]
