layout
imageMatrix
	"adjust for scale calculation ... see #scale"

	self isFixedLayout ifTrue: [^self imageMatrixFixed].

	^(Array new: 6)	
		at: 1 put: self imageWidth ; 
		at: 2 put: 0; 
		at: 3 put: 0;
		at: 4 put: self scale negated; 
		at: 5 put: self contentLeft; 
		at: 6 put: (self contentTop + self scale);
		yourself
