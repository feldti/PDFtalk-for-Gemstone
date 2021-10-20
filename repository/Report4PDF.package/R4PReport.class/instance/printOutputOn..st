printing
printOutputOn: aStream

	aStream nextPutAll: 'Report'; 
		cr; nextPutAll: 'page width: '; nextPutAll: self pageWidth printString;
		cr; nextPutAll: 'page height: '; nextPutAll: self pageHeight printString;
		cr; nextPutAll: 'margin: '; nextPutAll: self margin printString; 
		cr; nextPutAll: 'layout:'; 
			space; nextPutAll: self contentTop printString; 
			space; nextPutAll: self contentRight printString; 
			space; nextPutAll: self contentBottom printString; 
			space; nextPutAll: self contentLeft printString; 
		cr; nextPutAll: 'font: '; nextPutAll: self font printString; 
		tab; nextPutAll: 'font size: '; nextPutAll: self fontSize printString; 
		cr; nextPutAll: 'page number pattern: '; nextPutAll: self pageNumberPattern printString; 
		cr; nextPutAll: 'page total pattern: '; nextPutAll: self pageTotalPattern printString; 
		cr; nextPutAll: 'report total pattern: '; nextPutAll: self reportTotalPattern printString; 
		cr; nextPutAll: 'layout pages: '; nextPutAll: self pages size printString; 
		yourself.

	self printOutputPagesOn: aStream.
