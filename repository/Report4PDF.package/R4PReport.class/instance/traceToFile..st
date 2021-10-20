actions
traceToFile: aFilename
	(GsFile existsOnServer: aFilename) ifTrue: [
		GsFile removeServerFile: aFilename].
	self traceFileStream: (GsFile openWriteOnServer: aFilename)
