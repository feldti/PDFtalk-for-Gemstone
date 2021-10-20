examples
exampleHeaderFooter
	" self new exampleHeaderFooter saveAndShowAs: 'exampleHeaderFooter.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.

	report page: [:page | 
		page header text fontSize: 20; string: 'Top most header'.
		page header string: 'This is a second header section with default formatting'.
		page footer string: 'This is a footer with default formatting (2nd last footer)'.
		page footer text fontSize: 20; string: 'Bottom most footer. jgyp'].
 	^report
