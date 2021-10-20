examples
exampleTextMultiLineString
	" self new exampleTextMultiLineString saveAndShowAs: 'exampleTextMultiLineString.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.

	report page: [:page | 
		page header bold string: 'Text is entered with multiple lines'.
		page text  string: 'This
is a
multi-line
string.
It should render as
six lines of text.'].
	^report
