examples
exampleBullet
	" self new exampleBullet saveAndShowAs: 'exampleBullet.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
		page header fontSize: 12; string: 'Contains text with bullets'.
		page bullet string: 'first text with a bullet'.
		page bullet string: 'next text with a bullet'.
		page bullet string: 'third text with a bullet'.
		page bullet small indent: 10; string: 'indented text with smaller bullet'.
		page bullet small indent: 10; string: 'indented next text with smaller bullet'.
		page bullet small; string: 'text with a smaller bullet'.
		page bullet large; string: 'text with a large bullet'.
		page bullet diamond; string: 'diamond bullet'.
		page bullet square; string: 'square bullet'.
		page cr text bold string: 'character bullets'.
		page bullet character: 'A' ; string: 'numbered bullet letter A'.
		page bullet character: 'B' ; string: 'numbered bullet letter B'.
		page cr text bold string: 'numbered bullets'.
		page bullet number: 1; string: 'numbered bullet one'.
		page bullet number: 2; string: 'numbered bullet two'.
		page bullet number: 3; string: 'numbered bullet three'.

		page cr text bold string: 'text bullets'.
		page bullet: [:bullet | 
			bullet bulletText font: #'Helvetica-Bold'; fontSize: 10; replaceString: 'one'.
			bullet string: 'text for bullet one'].
		page bullet: [:bullet | 
			bullet bulletText font: #'Helvetica-Bold'; fontSize: 10; replaceString: 'two'.
			bullet string: 'text for bullet two']].
	^report
