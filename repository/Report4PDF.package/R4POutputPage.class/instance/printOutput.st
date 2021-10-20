printing
printOutput
	
	| stream | 

	stream := WriteStream on: self stringClass new.
	self printOutputOn: stream.
	^stream contents
