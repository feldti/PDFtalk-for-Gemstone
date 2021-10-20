actions
byteArraySUnitAs: aFilenameString
	"remove timestamps to get consistent content"

	| document |
	document := self buildPDF.
	document info at: #CreationDate put: nil.
	document info at: #ModDate put: nil.
	^document bytesForFile: aFilenameString
