actions - add
image

	| image | 

	image := R4PImage newForParent: self.
	self sectionsAdd: image.
	^image
