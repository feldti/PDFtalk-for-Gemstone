examples
exampleTransformationReport
	" self exampleTransformationReport "
	" x -> x  ,  y -> -y  ... flip vertically and move origin so that 0,0 is in the upper left corner"
	" to rotate text: (Matrix scaling: 4 @ -4) -->   [4 0 0 -4 0 0] ...  ((Matrix scaling: 4 @ -4) translatedBy: 50 @ 50)) --> [4 0 0 -4 50 50] "

	| page |
	page := PDF Page
				newInBounds: (0 @ 0 corner: 100 @ -100)
				colorspace: (PDF classAt: #DeviceRGB) new
				render: [:renderer |
  					renderer concat: ((PDF classAt: #Matrix) scaling: 1 @ -1).
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 1.
						renderer textMatrix: #(2 0 0 -2 10 10); showString: '(10 10)'. 
						renderer textMatrix: #(2 0 0 -2 10 20); showString: '(10 20)'.
						renderer textMatrix: #(2 0 0 -2 10 30); showString: '(10 30)'.
						renderer textMatrix: #(2 0 0 -2 10 40); showString: '(10 40)'.
						renderer textMatrix: #(2 0 0 -2 20 10); showString: '(20 10)'. 
						renderer textMatrix: #(2 0 0 -2 20 20); showString: '(20 20)'.
						renderer textMatrix: #(2 0 0 -2 20 30); showString: '(20 30)'.
						renderer textMatrix: #(2 0 0 -2 20 40); showString: '(20 40)']].
	page saveAndShowAs: 'transformation_report.pdf'
