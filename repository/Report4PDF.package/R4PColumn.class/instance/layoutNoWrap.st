layout
layoutNoWrap

	^self cells anySatisfy: [:each | each layoutNoWrap]
