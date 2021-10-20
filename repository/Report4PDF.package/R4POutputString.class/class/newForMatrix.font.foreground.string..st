instance creation
newForMatrix: aMatrix font: aFont foreground: aColorName string: aString

	^self new
		matrix: aMatrix;
		font: aFont;  
		setColor: aColorName; 
		string: aString; 
		yourself
