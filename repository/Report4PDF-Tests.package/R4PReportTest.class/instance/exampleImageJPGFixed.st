examples
exampleImageJPGFixed
	" self new exampleImageJPGFixed saveAndShowAs: 'exampleImageJPGFixed.pdf' "

	| report | 

	report := R4PReport new.
	report businessCard.
	report page: [:page | 
		page margin: 2.  
		page string: 'Show JPG and GIF image using fixed layouts'.
		page image 
				image: self smalltalkXImage; 
				fixedBox: #(20 120 135 10); "top, right, bottom, left"
				border: 1.
		 page image 
				image: self cherniakXImage; 
				fixedBox: #(20 242 135 125);  
				border: 1 ].
	^report
