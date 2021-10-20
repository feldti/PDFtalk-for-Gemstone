actions
variableColumnWidth

	| totalVariable |

	totalVariable := 0.
	self variableColumns do: [:each | 
		totalVariable := totalVariable + each columnWidth].
	^totalVariable
