accessing
fontCapHeight
	| ascender |
	ascender := self pdfFont capHeightInTextSpace.
	ascender = 0 ifTrue: [
		ascender := self pdfFont ascenderInTextSpace].
	^ascender * self layoutFontSize
