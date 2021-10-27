examples
exampleImagePNG
	" self new exampleImagePNG saveAndShowAs: 'exampleImagePNG.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page string: 'Show 3 PNG images aligned left, center, right'.
		page image: [:image | image image: self emptyblockXImage].
		page image: [:image | image align: #center; image: self greyblockXImage].
		page image: [:image | image align: #right; image: self greycircleXImage].].
	^report
