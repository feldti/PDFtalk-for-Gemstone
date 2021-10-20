accessing
watermark
	"answer a fixed size image; added to output first in order to be behind everything else"

	^watermark ifNil: [watermark := R4PImage newForParent: self]
