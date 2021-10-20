actions
renderPage

	^PDF Page
		newInBounds:  (0 @ 0 corner: self pageWidth @ self pageHeight negated)
		colorspace: (PDF classAt: #DeviceRGB) new
		render: [:newRenderer |
			self renderer: newRenderer.
			self renderer textRenderingMode: 0.
			self transformCoordinates.
			self renderContent].
