printing
printOutputPagesOn: aStream

	self builder ifNil: [^self].

	self builder outputPages do: [:each | 
		aStream cr.
		each printOutputOn: aStream]
