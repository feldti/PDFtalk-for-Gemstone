examples
exampleImageJPG
	" self new exampleImageJPG saveAndShowAs: 'exampleImageJPG.pdf' "

	| report | 

	report := R4PReport new.
	report landscape.
	report page: [:page | 
		page string: 'Show large JPG image, with border'.
		page image: [:image | image image: self smalltalkXImage; border: 1; padding: 1]].
	^report
