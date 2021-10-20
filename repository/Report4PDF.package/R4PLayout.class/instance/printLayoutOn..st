printing
printLayoutOn: aStream

	self isFixedLayout ifTrue: [
		^aStream cr; tab; nextPutAll: 'fixed: '; nextPutAll: self fixedBox printString; yourself].

	aStream 
		cr; tab; nextPutAll: 'layout: '; nextPutAll: self displayLayout; 
		cr; tab; nextPutAll: 'extent: '; nextPutAll: self displayLayoutExtent; 
		cr; tab; nextPutAll: 'margin: '; nextPutAll: self margin printString; 
		cr; tab; nextPutAll: 'padding: '; nextPutAll: self padding printString; 
		cr; tab; nextPutAll: 'border: '; nextPutAll: self border printString; 
		cr; tab; nextPutAll: 'box: '; nextPutAll: self displayBox; 
		cr; tab; nextPutAll: 'boxBottomLimit: '; nextPutAll: self boxBottomLimit printString; 
		cr; tab; nextPutAll: 'sections: '; nextPutAll: self sections size printString; 
		cr; tab; nextPutAll: 'built: '; nextPutAll: self built printString; 
		yourself
