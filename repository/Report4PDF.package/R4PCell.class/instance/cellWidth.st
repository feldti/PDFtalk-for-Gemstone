layout
cellWidth
	"only used for single column cells"

	self widthPercent notNil ifTrue: [
		^(self tableWidth) * (self widthPercent / 100.0)].

	self isFixedLayout ifTrue: [
		^self fixedRight].

	^self initialStringWidth 
		+ self spacingLeft 
		+ self spacingRight
