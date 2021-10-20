instance creation
newForParent: aParent string: aString leading: aNumber

	^(self newForParent: aParent)
		string: aString; 
		marginTop: aNumber / 2.0; 
		marginBottom: aNumber / 2.0; 
		yourself
