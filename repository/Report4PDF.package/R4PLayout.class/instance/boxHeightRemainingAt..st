calculate
boxHeightRemainingAt: anIndex
	"Spacing top and spacing are added at each page break, so remove the value here ... in effect, the text size has grown by the padding. 
	Add zeros to the boxHeightUsed history for cases where this layout begins on pages > 1"

	| total | 

	total := self boxHeight.
	anIndex = 1 ifTrue: [^total].

	(self boxHeightUsed isEmpty and: [self built not]) ifTrue: [
		anIndex - 1 timesRepeat: [
			self boxHeightUsed: (self boxHeightUsed copyWith: 0)]].

	1 to: anIndex - 1 do: [:index | 
		total := total - (self boxHeightUsed 
								at: index 
								ifAbsent: [self error: 'Invalid history of box height used before: ', anIndex printString]).
		total := total + self spacingTop + self spacingBottom].

	^total
