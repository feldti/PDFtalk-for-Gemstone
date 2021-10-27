examples
exampleImageGIF
	" self new exampleImageGIF saveAndShowAs: 'exampleImageGIF.pdf' "

	| report imageContent | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page string: 'Show GIF image with different scales'.
		page horizontalLine.
		imageContent := self cherniakXImage.
		page image: [:image | image scale: 20; image: imageContent].
		page horizontalLine.
		page image: [:image | image scale: 10; align: #center; image: imageContent].
		page horizontalLine.
		page image: [:image | image scale: 5; align: #right; image: imageContent].].
 	^report
