instance creation
newForStartPoint: aStartPoint endPoint: anEndPoint width: aWidth color: aColorName

	^self new
		startPoint: aStartPoint;
		endPoint: anEndPoint; 
		width: aWidth; 
		setColor: aColorName; 
		yourself
