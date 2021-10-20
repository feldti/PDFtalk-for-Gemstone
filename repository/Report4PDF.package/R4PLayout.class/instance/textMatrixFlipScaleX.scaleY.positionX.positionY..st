layout
textMatrixFlipScaleX: aScaleX scaleY: aScaleY positionX: aPositionX positionY: aPositionY

	^(Array new: 6)	
		at: 1 put: aScaleX negated; 
		at: 2 put: 0; 
		at: 3 put: 0;
		at: 4 put: aScaleY; 
		at: 5 put: aPositionX + self stringWidth; 
		at: 6 put: aPositionY - self fontHeight;
		yourself
