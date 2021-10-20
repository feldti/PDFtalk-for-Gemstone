examples
exampleTextWithMixedStrings
	" self new exampleTextWithMixedStrings saveAndShowAs: 'exampleTextWithMixedStrings.pdf' "
	" notice the difference between 'text bold string: 'foo'   and   'text string bold string: 'foo' 
		the first case is changing the layout parameters of text, so all the next strings added will be bold.
		the second case adds a new string layout with its own font; addinional strings added to text will not be bold"

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page header text: [:text |
			text fontSize: 10; string: 'Text in header (normal), '.
			text string bold string: 'followed by bold text.'].
		(page text string: 'Copyright ') copyright.
		(page text string: 'Trademark ') trademark.
		page text: [:text | 
			text string: 'Normal text, '.
			text string bold string: 'followed by bold, '.
			text string italic string: 'followed by italic, '.
			text string boldItalic string: 'followed by bold italic.'.].
		page horizontalLine.
		page text: [:text | 
			text large.
			text string: 'Helvetica (Hgjpyx) '.
			text string courier; string: 'Courier (Hgjpyx) '.
			text string timesRoman string: 'Times Roman  (Hgjpyx) '].
		page horizontalLine.
		page text: [:text | 
			text string large; string: 'Large text. '.
			text string medium; string: 'Medium text. '.
			text string small; string: 'Small text'].
		page horizontalLine].
	^report
