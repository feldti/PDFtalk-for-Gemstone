accessing
fontDescender
	"descender is a negative value"

	^self pdfFont descenderInTextSpace negated * self layoutFontSize
