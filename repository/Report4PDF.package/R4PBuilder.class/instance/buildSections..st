build - layout
buildSections: aLayout

	aLayout layoutSections do: [:each | each buildOutput: self].
