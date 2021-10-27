examples
exampleAlignMiddleWordWrap
	" self new exampleAlignMiddleWordWrap saveAndShowAs: 'exampleAlignMiddleWordWrap.pdf' "
	"this needs to change to allow for word wrap calculation; right now the first string is set to the middle.
	See R4PText>>contentTopForMiddleAlign: "

	| report section | 

	report := R4PReport new.
	report letterPortrait.
	section := report page grid; section.
	section origin: 10 @ 10; width: 500; height: 300; border: 1; padding: 2.
	section text align: #right; middle; string: self sampleText1.
	^report
