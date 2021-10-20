accessing
align: aSymbol

	| value | 

	value := aSymbol asSymbol.
	value = #centre ifTrue: [^align := #center].
	align := value
