documentation
buildReport: aReport newPage: aString

	^aReport page footer: [:footer | 
		footer text verySmall center string: '<pageX> of <totalX>']; 
		text: [:text | text bold large string: aString]; yourself
