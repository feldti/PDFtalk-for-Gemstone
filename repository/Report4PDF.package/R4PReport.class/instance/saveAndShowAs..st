actions
saveAndShowAs: aFilenameString
	"document may not be nil if created from SUnit test"

	self buildPDF saveAndShowAs: aFilenameString
