initialize-release
initializeBulletText

	self bulletText: (R4PText newForParent: self).
	self bulletText noWrap.
	"self bulletText border: 0.1 . "
	self bulletFont: #ZapfDingbats.
	self bulletFontSize: 6.
	self circle.
