build
buildPageSections

	self reportPage layoutSections do: [:each | each buildOutput: self].
