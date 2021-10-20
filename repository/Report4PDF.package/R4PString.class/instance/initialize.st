initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.

	string := ''.
	lineBreak := false.
	endWithLineBreak := false.
	positionX := 0.

	^self
