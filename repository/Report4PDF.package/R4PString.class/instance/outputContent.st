output
outputContent

	self containsTruncatedText ifTrue: [
		^Array 
			with: self truncatedImage
			with: self outputString].

	^Array with: self outputString
