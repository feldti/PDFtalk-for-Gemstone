accessing
widthRatio
	"scale is used for image height, so width has to be adjusted"

	^(self image width) / (self image height)
