calculate
calculateLayout
	"scale down to fit page width"

	| ratio | 

	self imageWidth <= self layoutWidth ifTrue: [^self].
	ratio := self layoutWidth / self imageWidth. 
	self scale: self scale * ratio.
	
	super calculateLayout.
