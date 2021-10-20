actions
closeTraceFileStream

	self traceFileStream isNil ifTrue: [^self].
	self traceFileStream close.
