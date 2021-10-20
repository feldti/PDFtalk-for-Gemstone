examples
exampleAlignCenter
	" self new exampleAlignCenter saveAndShowAs: 'exampleAlignCenter.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report traceToTranscript.  " write a diagnostic trace to the transcript "
	report page grid section origin: 10 @ 10; width: 100; height: 100; border: 1; align: #center; string: 'center align'.
	^report
