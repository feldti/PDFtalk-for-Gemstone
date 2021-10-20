examples
exampleLinesFixed
	" self new exampleLinesFixed saveAndShowAs: 'exampleLinesFixed.pdf' "
	" notice that the outer box adjusts for the width of the two vertical outside lines"

	| report page | 

	report := R4PReport new.
	report portrait.
	page := report page.
	page line origin: 9 @ 10; extent: 594 @ 0; lineWidth: 2.
	page line origin: 602 @ 10; extent: 0 @ 772; lineWidth: 2.
	page line origin: 9 @ 782; extent: 594 @ 0; lineWidth: 2.
	page line origin: 10 @ 10; extent: 0 @ 772; lineWidth: 2.

	page line red fixedBox: #(20 592 20 20); lineWidth: 2.
	page line red fixedBox: #(20 592 772 592); lineWidth: 2.
	page line red fixedBox: #(772 592 772 20); lineWidth: 2.
	page line red fixedBox: #(20 20 772 20); lineWidth: 2.

	page line gray fixedTop: 30; fixedRight: 582; fixedBottom: 30; fixedLeft: 30; lineWidth: 2.
	page line gray fixedTop: 30; fixedRight: 582; fixedBottom: 762; fixedLeft: 582; lineWidth: 2.
	page line gray fixedTop: 762; fixedRight: 582; fixedBottom: 762; fixedLeft: 30; lineWidth: 2.
	page line gray fixedTop: 30; fixedRight: 30; fixedBottom: 762; fixedLeft: 30; lineWidth: 2.

	page line foreground: #darkgray; start: 40 @ 40; end: 572 @ 40; lineWidth: 2.
	page line foreground: #darkgray; start: 572 @ 40; end: 572 @ 752; lineWidth: 2.
	page line foreground: #darkgray; start: 40 @ 752; end: 572 @ 752; lineWidth: 2.
	page line foreground: #darkgray; start: 40 @ 40; end: 40 @ 752; lineWidth: 2.
	^report
