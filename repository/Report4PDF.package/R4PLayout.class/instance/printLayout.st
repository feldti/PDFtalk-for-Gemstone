printing
printLayout

	| stream |

	stream := WriteStream on: self stringClass new.
	self printLayoutOn: stream.
	^stream contents
