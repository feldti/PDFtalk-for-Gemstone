examples
exampleTextCheckWrapping
	" self new exampleTextCheckWrapping saveAndShowAs: 'exampleTextCheckWrapping.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report traceToTranscript.

	report page: [:page | 
		page text 
			string: 'Long text that will be wrapped ';
			string: 'and is followed by text ';
			string: 'on a new line after this sentence is finished, but there are no line breaks in this sentence.
This text should be on a new line. 
As should this text.'].
	^report
