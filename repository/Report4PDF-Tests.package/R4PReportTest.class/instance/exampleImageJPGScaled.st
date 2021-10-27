examples
exampleImageJPGScaled
	" self new exampleImageJPGScaled saveAndShowAs: 'exampleImageJPGScaled.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page margin: 2. 
		page string: 'Show large JPG image scaled to fit, with border'.
		page image: [:image | 
			image 
				image: self smalltalkXImage; 
				border: 1;
				string: 'this is text added to the image']].
	^report
