examples
exampleBackgroundForegroundColor
	" self new exampleBackgroundForegroundColor saveAndShowAs: 'exampleBackgroundForegroundColor.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		(page section gray) text red string: 'section gray background, red text'.
		(page section red) text grey string: 'section red background, grey text'.
		(page section background: #'gray1') text foreground: #'gray9'; string: 'section gray1 background, text gray9 foreground'.
		(page section background: #'gray2') text foreground: #'gray7'; string: 'section gray2 background, text gray8 foreground'.
		(page section background: #'gray3') text foreground: #'gray6'; string: 'section gray3 background, text gray7 foreground'.
		(page section background: #'gray4') text foreground: #'gray5'; string: 'section gray4 background, text gray6 foreground'.
		(page section background: #'gray5') text foreground: #'gray4'; string: 'section gray5 background, text gray5 foreground'.
		page text background: #'gray6'; foreground: #'gray4'; string: 'text gray6 background, text gray4 foreground'.
		page text background: #'gray7'; foreground: #'gray3'; string: 'text gray7 background, text gray3 foreground'.
		page text background: #'gray8'; foreground: #'gray2'; string: 'text gray8 background, text gray2 foreground'.
		page text background: #'gray9'; foreground: #'gray1'; string: 'text gray9 background, text gray1 foreground'].
	^report
