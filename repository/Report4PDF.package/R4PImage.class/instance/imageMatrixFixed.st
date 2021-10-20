layout
imageMatrixFixed

	^(Array new: 6)	
		at: 1 put: self fixedWidth ; 
		at: 2 put: 0; 
		at: 3 put: 0;
		at: 4 put: self fixedHeight negated; 
		at: 5 put: self fixedLeft; 
		at: 6 put: self fixedBottom;
		yourself
