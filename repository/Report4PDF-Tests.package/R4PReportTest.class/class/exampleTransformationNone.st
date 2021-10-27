examples
exampleTransformationNone
	" self exampleTransformationNone "

	| page |
	page := PDF Page
				newInBounds: (-100 @ -100 corner: 100 @ 100)
				colorspace: (PDF classAt: #DeviceRGB) new
				render: [:renderer |
					renderer moveTo: -100 @ 0; lineTo: 100 @ 0; stroke.	"draws a line at y = 0"
					renderer moveTo: 0 @ -100; lineTo: 0 @ 100; stroke.	"draws a line at x = 0"
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 1.
						renderer textMatrix: #(4 0 0 4 50 50); showString: '(50 50)']. "bigger font"
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 1.
						renderer textMatrix: #(2 0 0 2 -50 50); showString: '(-50 50)'].
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 1.
						renderer textMatrix: #(2 0 0 2 50 -50); showString: '(50 -50)'].
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 1.
						renderer textMatrix: #(2 0 0 2 -50 -50); showString: '(-50 -50)']].
	page saveAndShowAs: 'transformation_none.pdf'
