examples
exampleAlignCenterMiddle
	" self new exampleAlignCenterMiddle saveAndShowAs: 'exampleAlignCenterMiddle.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report traceToFile: 'exampleAlignCenterMiddle_trace.txt'. " replaces previous versions of the file "
	report page: [:page | 
		page grid.
		page section 
			origin: 10 @ 10; width: 100; height: 100; border: 2; center; middle;
			string: 'center middle'].
	^report
