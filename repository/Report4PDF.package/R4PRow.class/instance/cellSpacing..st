accessing
cellSpacing: anObject
	"copy to allow for #(0 0 0 0) which could get a #at:put: "

	cellSpacing := anObject asLayoutArray copy
