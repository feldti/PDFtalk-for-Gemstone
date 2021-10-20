actions
outputAdd: anOutput
	"limited output in case of runaway code "

	anOutput isNil ifTrue: [^self].
	self output add: anOutput.

	self output size > 9999 ifTrue: [
		self error: 'maximum number of output pages (9999) exceeded'].
