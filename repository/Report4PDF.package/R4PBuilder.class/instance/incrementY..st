actions
incrementY: aNumber
	
	| newY | 

	newY := self currentY + aNumber.
	(newY roundTo: 0.01) > (self maximumY roundTo: 0.01) ifTrue: [
		^self reportError: 'PRwBuilder>>incrementY: ', aNumber printString, ' exceeded maximumY: ', self maximumY printString].

	self currentY: newY
