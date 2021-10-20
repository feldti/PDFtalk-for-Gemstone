actions
adjustPosition
	"required when a <page> or <total> is replaced and the X position of this string would shift.
	replace #originalWidth in case both <page> and <total> are replaced"

	| newWidth delta x | 

	self align = #center ifFalse: [
		self align = #right ifFalse: [
			^self]].

	self originalWidth isNil ifTrue: [^self].
	newWidth := self stringWidth.
	delta := self originalWidth - newWidth.
	x := self matrix at: 5.
	self originalWidth: newWidth. 

	self align = #center ifTrue: [^self matrix at: 5 put: (x + (delta / 2.0))].
	self align = #right ifTrue: [^self matrix at: 5 put: (x + delta)].
