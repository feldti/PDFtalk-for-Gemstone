calculate
calculateLayout
	"  for layoutNoWrap ... no need to calculate word wrap, but need to update #calculateTruncatedLayout "

	self sections isEmpty ifTrue: [^self].
	self calculateTruncatedText. 
	self initializeLeading. 
	self calculateMaxFontHeight. 

	self layoutNoWrap ifTrue: [
		^self calculateTruncatedLayout].

	self calculateStringRows. 
	self calculateStringLayout.
	self sections last cr.
