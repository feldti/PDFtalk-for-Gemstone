examples
exampleLoadedFonts
	" self exampleLoadedFonts "

	| page |

	page := PDF Page
				newInBounds: (0 @ 0 corner: 400 @ 600)
				colorspace: (PDF classAt: #DeviceRGB) new
				render: [:renderer |
					renderer textRenderingMode: 0.
					renderer textObjectDo: [
						renderer setFont: #Helvetica size: 18.
						renderer textMatrix: #(1 0 0 1 10 580); showString: 'Font list'.
						((PDFtalk at: #Fonts) at: #Font) loadedFonts keys asSortedCollection do: [:each |
							renderer add: ((PDFtalk at: #NextLineRelative) operands: #(0 -20)).
							renderer setFont: #Helvetica size: 12.
							renderer showString: each asString.
							renderer setFont: each size: 12.
							renderer add: ((PDFtalk at: #NextLineRelative) operands: #(0 -15)).
							renderer showString: 'The quick brown fox jumps over the lazy dog']]].
	page saveAndShowAs: 'loadedFonts.pdf'
