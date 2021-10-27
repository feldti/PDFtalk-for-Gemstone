examples
exampleTextLongReportMargins
	" self new exampleTextLongReportMargins saveAndShowAs: 'exampleTextLongReportMargins.pdf' "

	| report string | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	report margin: 10.
	string := self sampleText1 , self sampleText2 , self sampleText3 , self sampleText4.
	string := string , string , string.
	report page: [:page | 
		page header text: [:text | text fontSize: 12; 
			string: 'This text will span multiple pages. Page number: <page> of <total>'].
		page header text: [:text | text string: 'This header should only be visible on page 1'. 
			text exclude: [:number | number > 1]].
		page text string: string; margin: 20.
		page footer text fontSize: 12; string: 'This is a footer'.
		page footer text: [:text | text string: 'This footer should only be visible after page 1'.
			text include: [:number | number > 1]] ].
	^report
