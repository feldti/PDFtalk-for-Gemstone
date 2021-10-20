accessing
fontHeight
	"fonts like ZapfDingbats have no capHeight, ascenders or descenders"

	self pdfFont ascender = 0 ifTrue: [
		^self fontBoxHeight].

	^self fontCapHeight + self fontDescender.
