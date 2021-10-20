actions
traceOutput: aString
	" cr prefix for Transcript in case there is already content "

	self isTraceToTranscript ifTrue: [
		Transcript cr; nextPutAll: aString].

	self isTraceToFile ifTrue: [
		self traceFileStream nextPutAll: aString; cr].
