actions
checkFitString: aLayoutString
	"check fit again in case next page also does not fit.
	parent border may need to be done again if this is a row cell"

	aLayoutString outputOnNewPage ifFalse: [
		(self findPageToFitString: aLayoutString) ifTrue: [^self]].

	self pageBreak.

	self setLayout: aLayoutString.
	aLayoutString parent buildNewPageParent: self.
	aLayoutString parent buildNextPageParent: self.
