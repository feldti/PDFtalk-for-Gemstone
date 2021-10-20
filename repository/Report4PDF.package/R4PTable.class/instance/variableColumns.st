actions
variableColumns

	^self columns reject: [:each | 
		each layoutNoWrap]
