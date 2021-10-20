examples
exampleAlignMiddle
	" self new exampleAlignMiddle saveAndShowAs: 'exampleAlignMiddle.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report traceToTranscript.    " trace output to both the Transcript and a file "
	report traceAppendTo: 'exampleAlignMiddle_trace.txt'. " adds to previous versions of the file ... delete it manually "
	report page grid section origin: 10 @ 10; width: 100; height: 100; border: 1; middle; string: 'vertical align'.
	^report
