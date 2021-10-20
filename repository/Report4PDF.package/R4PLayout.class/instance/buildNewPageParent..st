actions
buildNewPageParent: aBuilder
	"Sent when any nested section triggers a page break; used by tables with repeating headers, 
	vs. buildNextPageParent: which is sent only ALL bage break, either for new pages or rendering a previously created output pages"

	self parent buildNewPageParent: aBuilder.
