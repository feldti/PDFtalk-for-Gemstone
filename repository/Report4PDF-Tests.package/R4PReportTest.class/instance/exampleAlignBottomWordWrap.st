examples
exampleAlignBottomWordWrap
	" self new exampleAlignBottomWordWrap saveAndShowAs: 'exampleAlignBottomWordWrap.pdf' "

	| report section | 

	report := R4PReport new.
	report letterPortrait.
	section := report page grid; section.
	section origin: 10 @ 10; width: 500; height: 100; border: 1; padding: 2.
	section text align: #right; bottom; string: self sampleText1.
	^report
