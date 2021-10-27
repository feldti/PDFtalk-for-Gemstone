examples
exampleTextWithMixedStringsAndAlignments
	" self new exampleTextWithMixedStringsAndAlignments saveAndShowAs: 'exampleTextWithMixedStringsAndAlignments.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.

	report page: [:page | 
 		page text: [:text |
			text center. 
			text string: 'Centered normal text, '.
			text string bold; string: 'followed by bold, '.
			text string italic; string: 'followed by italic, '.
			text string boldItalic; string: 'followed by bold italic.'.]. 
		page text: [:text | 
			text center.
			text string: 'Centered default font (Helvetica), '.
			text string courier; string: 'followed by Courier, '.
			text string courier italic string: 'followed by Courier italic, '.
			text string timesRoman string: 'followed by Times Roman, '.
			text string timesRoman bold string: 'followed by Times Roman Bold.'.].
 		page horizontalLine.
		page text: [:text | 
			text right.
			text string: 'Right justified normal text '.
			text string bold; string: 'followed by bold, '.
			text string italic; string: 'followed by italic, '.
			text string bold italic; string: 'followed by bold italic.'.].
		page text: [:text | 
			text right.
			text string: 'Right justified default font (Helvetica), '.
			text string courier; string: 'followed by Courier, '.
			text string courier italic string: 'followed by Courier italic, '.
			text string timesRoman string: 'followed by Times Roman, '.
			text string timesRoman bold string: 'followed by Times Roman Bold.'.] ].
	^report
