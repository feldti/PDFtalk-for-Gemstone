layout
textMatrixScaleX: aScaleX scaleY: aScaleY positionX: aPositionX positionY: aPositionY

	^(Array new: 6)	
		at: 1 put: aScaleX; 
		at: 2 put: 0; 
		at: 3 put: 0;
		at: 4 put: aScaleY negated; 
		at: 5 put: aPositionX; 
		at: 6 put: aPositionY;
		yourself
