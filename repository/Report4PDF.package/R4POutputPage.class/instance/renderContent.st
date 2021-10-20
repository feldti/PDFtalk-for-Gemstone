actions
renderContent

	self output do: [:each | 
		each renderOutput: self renderer]
