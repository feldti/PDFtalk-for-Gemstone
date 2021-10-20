layout
boxTop
	"All cells in a row have the same box top"

	^self parent boxTop
		+ self parent paddingTop
		+ self marginTop
