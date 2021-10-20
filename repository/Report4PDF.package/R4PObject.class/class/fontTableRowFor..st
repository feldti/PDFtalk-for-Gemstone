accessing
fontTableRowFor: aSymbol

	^self fontTable 
		detect: [:each | each includes: aSymbol] 
		ifNone: [self error: 'No entry in the font table found for ', aSymbol printString. nil]
