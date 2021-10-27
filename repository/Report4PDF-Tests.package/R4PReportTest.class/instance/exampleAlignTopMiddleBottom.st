examples
exampleAlignTopMiddleBottom
	" self new exampleAlignTopMiddleBottom saveAndShowAs: 'exampleAlignTopMiddleBottom.pdf' "

	| report section | 

	report := R4PReport new.
	report businessCard.
	section := report page grid; section.
	section origin: 10 @ 10; width: 100; height: 100; border: 1; padding: 2.
	section text align: #left; top; string: 'left top (padding = 2)'.
	section text align: #center; middle; string: 'center middle'.
	section text align: #right; bottom; string: 'bottom right'.
	^report
