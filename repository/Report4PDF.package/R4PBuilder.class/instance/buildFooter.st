build - layout
buildFooter

	| previousY newMaximumY | 

	self reportPage footer layoutSections isEmpty ifTrue: [^self].

	newMaximumY :=  (self maximumY) - (self reportPage footer layoutHeight).
	previousY := self currentY. 
	self currentY: newMaximumY.
	self buildSection: self reportPage footer.
	self maximumY: newMaximumY.
	self currentY: previousY.
