calculate
calculateStringRows
	" remove any content after the cr from this section and add it as addtional sections "

	| crIndex truncatedString remainingString newStringLayout | 

	self string isEmpty ifTrue: [^self].
	crIndex := self string indexOf: Character cr.
	crIndex = 0 ifTrue: [^self].
	crIndex = self string size ifTrue: [^self].

	truncatedString := self string copyFrom: 1 to: crIndex - 1.
	remainingString := self string copyFrom: crIndex + 1 to: self string size. 
	self string: truncatedString; cr; endWithLineBreak: true.
	
	newStringLayout := self class 
								newForParent: self parent 
								string: remainingString 
								leading: self parent leading
								font: self layoutFont.
	self parent addStringLayout: newStringLayout after: self.

	newStringLayout calculateStringRows
