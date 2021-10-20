examples
exampleImageJPGPageBreak
	" self new exampleImageJPGPageBreak saveAndShowAs: 'exampleImageJPGPageBreak.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page margin: 2. 
		page string: 'Image will be displayed on the next page'.
		page string: 'because of there is not enough room on the first page'.
		page string: 'with'.
		page string: 'this'.
		page string: 'much'.
		page string: 'text'.
		page string: 'on'.
		page string: 'top.'.
		page image: [:image | image image: self smalltalkXImage; border: 1; marginTop: 2]].
	^report
