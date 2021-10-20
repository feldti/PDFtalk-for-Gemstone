actions
updateOutputPages
	"replace strings if total pages pattern is used"
	"need to fix root cause of extra output pages with tables that have page breaks. 
	See exampleTextColumnsPageBreaks2"

	| count | 

	self outputPages: (self outputPages reject: [:each | each output isEmpty]).

	count := 0.
	self outputPages do: [:eachPage |
		count := count + 1.
		eachPage nextPageNumber notNil ifTrue: [
			count := eachPage nextPageNumber].
		eachPage 
			replaceString: self report pageNumberPattern 
			with: count printString.
		eachPage
			replaceString: self report pageTotalPattern 
			with: eachPage outputPagesSize printString.
		eachPage
			replaceString: self report reportTotalPattern 
			with: self outputPages size printString].
