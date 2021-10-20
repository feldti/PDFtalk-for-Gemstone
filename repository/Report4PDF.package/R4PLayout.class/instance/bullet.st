actions - add
bullet

	| bullet | 

	bullet := R4PBullet newForParent: self.
	self sectionsAdd: bullet.
	^bullet
