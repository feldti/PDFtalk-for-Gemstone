accessing
fontTable
	" 	#( ... #(normal, bold, italic, bold + italic) ... )  "

	^#(
		(Courier #'Courier-Bold' #'Courier-Oblique' #'Courier-BoldOblique')
		(Helvetica #'Helvetica-Bold' #'Helvetica-Oblique' #'Helvetica-BoldOblique')
		(Symbol Symbol Symbol Symbol)
		(#'Times-Roman' #'Times-Bold' #'Times-BoldItalic' #'Times-Italic')
		(ZapfDingbats ZapfDingbats ZapfDingbats ZapfDingbats)
	)
