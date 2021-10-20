output
outputTruncated

	^self containsTruncatedText 
		ifTrue: [Array with: self truncatedImage]
		ifFalse: [Array new]
