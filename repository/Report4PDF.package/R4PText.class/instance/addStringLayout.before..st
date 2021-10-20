actions
addStringLayout: aLayout before: aCurrentLayout

	| index | 

	index := self sections indexOf: aCurrentLayout ifAbsent: [
		^self error: 'Cannot find string layout in text while calculating word wrap. ', aCurrentLayout displayString printString].

	self sections add: aLayout beforeIndex: index
