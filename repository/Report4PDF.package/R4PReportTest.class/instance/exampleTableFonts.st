examples
exampleTableFonts
	" self new exampleTableFonts saveAndShowAs: 'exampleTableFonts.pdf' "
	"See R4PObject class >> fontTable  "

	| report | 

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page table: [:table | 
			table marginTop: 10; cellPadding: 2 .
			table header: [:row | 
				row borderBottom: 0.5 .
				row cell bold string: 'Font method'.
				row cell widthPercent: 80; string: ' '].
			#(courier helvetica symbol timesRoman zapfDingbats) do: [:eachFont | 
				table row: [:row | 
					row cell string: eachFont asString.
					(row cell perform: eachFont) string: 'The quick brown fox jumps over the lazy dog'].
				table row: [:row | 
					row cell string: eachFont asString.
					(row cell perform: eachFont) bold string: 'The quick brown fox jumps over the lazy dog (bold)'].
				table row: [:row | 
					row cell string: eachFont asString.
					(row cell perform: eachFont) italic string: 'The quick brown fox jumps over the lazy dog (italic)'].
				table row: [:row | 
					row cell string: eachFont asString.
					(row cell perform: eachFont) boldItalic string: 'The quick brown fox jumps over the lazy dog (bold italic)'].]]].
	^report
