examples
exampleImageColorGIF
	" self new exampleImageColorGIF saveAndShowAs: 'exampleImageColorGIF.pdf' "

	| report imageContent | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page string: 'Show GIF image with different scales'.
		page horizontalLine.
		imageContent := self colorXImage.
		page image: [:image | image scale: 20; image: imageContent].
		page horizontalLine.
		page image: [:image | image scale: 10; align: #center; image: imageContent].
		page horizontalLine.
		page image: [:image | image scale: 5; align: #right; image: imageContent].].
 	^report
