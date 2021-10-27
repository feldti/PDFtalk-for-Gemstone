examples
exampleTextWithBullets
	" self new exampleTextWithBullets saveAndShowAs: 'exampleTextWithBullets.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 300. "to show trigger breaks"
	report margin: 36.

	report page: [:page | 
		page header string: 'Text with bullets'.
		page bullet string: self sampleText1.
		page bullet string: self sampleText2.
		page bullet string: self sampleText3.
		page bullet string: self sampleText4].
	^report
