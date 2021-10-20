instance creation
newForMatrix: aMatrix font: aFont fontSize: aFontSize align: anAlignSymbol originalWidth: anOriginalWidth foreground: aColorName string: aString

	^self new
		matrix: aMatrix;
		font: aFont;  
		fontSize: aFontSize; 
		originalWidth: anOriginalWidth;
		align: anAlignSymbol;
		setColor: aColorName; 
		string: aString; 
		yourself
