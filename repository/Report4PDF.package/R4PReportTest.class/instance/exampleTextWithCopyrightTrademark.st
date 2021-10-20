examples
exampleTextWithCopyrightTrademark
	" self new exampleTextWithCopyrightTrademark saveAndShowAs: 'exampleTextWithCopyrightTrademark.pdf'  "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		(page text string: 'Copyright ') copyright.
		(page text string: 'Trademark ') trademark.
		page text string: 'Copyright©, Trademark®'].
	^report
