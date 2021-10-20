examples
exampleTransformationXY
	" self exampleTransformationXY "
	" x -> -x  ,  y -> -y   flip diagonally"
	" to rotate text: (Matrix scaling: -4 @ -4) -->   [-4 0 0 -4 0 0] ...  ((Matrix scaling: -4 @ -4) translatedBy: 50 @ 50)) --> [-4 0 0 -4 50 50] "

	| page |
	page := PDF Page
				newInBounds: (-100 @ -100 corner: 100 @ 100)
				colorspace: (PDF classAt: #DeviceRGB) new
				render: [:renderer |
  					renderer concat: ((PDF classAt: #Matrix) scaling: -1 @ -1).
					renderer moveTo: -100 @ 0; lineTo: 100 @ 0; stroke.	"draws a line at y = 0"
					renderer moveTo: 0 @ -100; lineTo: 0 @ 100; stroke.	"draws a line at x = 0"
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 1.
						renderer textMatrix: #(-4 0 0 -4 50 50); showString: '(50 50)'. "bigger font"
						renderer textMatrix: #(-2 0 0 -2 -50 50); showString: '(-50 50)'.
						renderer textMatrix: #(-2 0 0 -2 50 -50); showString: '(50 -50)'.
						renderer textMatrix: #(-2 0 0 -2 -50 -50); showString: '(-50 -50)']].
	page saveAndShowAs: 'transformation_XY.pdf'
