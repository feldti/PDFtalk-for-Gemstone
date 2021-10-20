instance creation
newTruncatedOutputForParent: aLayoutString

	| image | 

	image := self newForParent: aLayoutString.
	^image buildTruncatedOutputFor: aLayoutString
