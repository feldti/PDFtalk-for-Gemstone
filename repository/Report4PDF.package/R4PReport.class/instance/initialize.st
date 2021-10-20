initialize-release
initialize
	"Initialize a newly created instance. This method must answer the receiver."

	super initialize.

	pages := OrderedCollection new.
	pageHeight := 100.
	pageWidth := 200.
	font := #Helvetica . 
	fontSize := 10.
	margin := Array with: 0 with: 0 with: 0 with: 0.  "top right bottom left"
	pageNumberPattern := '<page>'.
	pageTotalPattern := '<total>'.
	reportTotalPattern := '<report>'.
	traceOption := nil.

	^self
