actions
fixedColumns

	^self columns select: [:each | 
		each layoutNoWrap]
