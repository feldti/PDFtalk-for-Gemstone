actions
addPortraitGridOn: aPage
	"show as 10x10 with 5x5 in lighter line ... 612 x 792"

	10 to: 780 by: 10 do: [:yIndex | 
		aPage line: [:line | line fixedTop: yIndex; fixedRight: 602; fixedBottom: yIndex; fixedLeft: 10; lineWidth: 0.5]].

	15 to: 775 by: 10 do: [:yIndex | 
		aPage line: [:line | line fixedTop: yIndex; fixedRight: 602; fixedBottom: yIndex; fixedLeft: 10; lineWidth: 0.1]].

	10 to: 600 by: 10 do: [:xIndex | 
		aPage line: [:line | line fixedTop: 10; fixedRight: xIndex; fixedBottom: 782; fixedLeft: xIndex; lineWidth: 0.5]].

	15 to: 595 by: 10 do: [:xIndex | 
		aPage line: [:line | line fixedTop: 10; fixedRight: xIndex; fixedBottom: 782; fixedLeft: xIndex; lineWidth: 0.1]]
