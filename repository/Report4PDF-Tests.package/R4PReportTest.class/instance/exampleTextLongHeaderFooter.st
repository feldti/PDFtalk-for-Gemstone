examples
exampleTextLongHeaderFooter
	" self new exampleTextLongHeaderFooter saveAndShowAs: 'exampleTextLongHeaderFooter.pdf' "

	| report string | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	string := self sampleText1 , self sampleText2 , self sampleText3 , self sampleText4.
	string := string , string , string.
	report page: [:page | 
		page header text: [:text | text bold string: 'This text will span multiple pages. Page number: <page>'].
		page header text: [:text | text string: 'This header should only be visible on page 1'. 
			text exclude: [:number | number > 1]].
		page text: [:text | text string: string; margin: 30].
		page footer text bold string: 'This is a footer'.
		page footer text: [:text | text string: 'This footer should only be visible after page 1'.
			text include: [:number | number > 1]] ].
	^report
