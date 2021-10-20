actions
replaceString: aString with: aNewString

	self output do: [:each | 
		each replaceString: aString with: aNewString]
