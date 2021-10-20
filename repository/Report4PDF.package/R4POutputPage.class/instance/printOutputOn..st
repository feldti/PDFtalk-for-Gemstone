printing
printOutputOn: aStream

	aStream nextPutAll: '---';
		cr; nextPutAll: 'page width: '; nextPutAll: self pageWidth printString; 
		cr; nextPutAll: 'page height: '; nextPutAll: self pageHeight printString;
		cr; nextPutAll: 'maximum Y: '; nextPutAll: self maximumY printString; nextPutAll: ' (page height - footer)'; 
		cr; nextPutAll: 'output parts: '; nextPutAll: self output size printString.

	self nextPage notNil ifTrue: [
		aStream cr; nextPutAll: '''next page'' size: ', self nextPageSize printString].

	self output do: [:each | 
		aStream cr.
		each printOutputOn: aStream]
