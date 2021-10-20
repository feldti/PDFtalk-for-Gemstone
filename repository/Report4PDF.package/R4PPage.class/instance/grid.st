actions
grid

	0 to: self pageHeight by: 10 do: [:yIndex | 
		self line: [:line | line fixedTop: yIndex; fixedRight: self pageWidth; fixedBottom: yIndex; fixedLeft: 0; lineWidth: 0.5]].

	5 to: self pageHeight by: 10 do: [:yIndex | 
		self line: [:line | line fixedTop: yIndex; fixedRight: self pageWidth; fixedBottom: yIndex; fixedLeft: 0; lineWidth: 0.1]].

	0 to: self pageWidth by: 10 do: [:xIndex | 
		self line: [:line | line fixedTop: 0; fixedRight: xIndex; fixedBottom: self pageHeight; fixedLeft: xIndex; lineWidth: 0.5]].

	5 to: self pageWidth by: 10 do: [:xIndex | 
		self line: [:line | line fixedTop: 0; fixedRight: xIndex; fixedBottom: self pageHeight; fixedLeft: xIndex; lineWidth: 0.1]]
