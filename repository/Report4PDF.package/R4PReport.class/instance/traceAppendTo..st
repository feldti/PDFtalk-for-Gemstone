actions
traceAppendTo: aFilename
	self traceFileStream: (GsFile openAppendOnServer: aFilename)
