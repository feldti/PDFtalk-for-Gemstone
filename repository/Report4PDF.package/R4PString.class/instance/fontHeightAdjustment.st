accessing
fontHeightAdjustment
	"Y value is the top of the font but output rendering requires a Y value for the bottom ... 
	fonts like ZapfDingbats use the FontBBox and  individual glyph bounding boxes.
	If there is a mix of fonts and font heights in a text, use the maximum"
	
	self parent maxFontHeight > 0 ifTrue: [
		self parent maxFontHeight ~= self fontAscender ifTrue: [
			^self parent maxFontHeight + (self fontDescender / 2.0)]].

	self pdfFont ascender = 0 ifTrue: [^self fontBoxHeight].
	^self fontAscender  + (self fontDescender / 2.0)
