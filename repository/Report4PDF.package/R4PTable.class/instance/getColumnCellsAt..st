actions
getColumnCellsAt: anIndex
	"a cell can be nil if a neighbouring cell spans columns"
	"no #at:ifAbsent: in base VW for OrderedCollection"

	| headerCell columnCells | 

	self headerRow notNil ifTrue: [
		headerCell := anIndex > self headerRow sections size 
			ifTrue: [nil]
			ifFalse: [self headerRow sections at: anIndex]].
	
	columnCells := self sections collect: [:eachRow | 
		eachRow cellAt: anIndex].
	columnCells := columnCells reject: [:each | each isNil].

	headerCell notNil ifTrue: [
		columnCells := (Array with: headerCell) , columnCells].

	^columnCells
