actions
fixedColumnWidth

	| totalFixed |

	totalFixed := 0.
	self fixedColumns do: [:each | 
		totalFixed := totalFixed + each columnWidth].
	^totalFixed
