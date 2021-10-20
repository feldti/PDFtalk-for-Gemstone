actions
setBuiltToFalse
	"for repeating headers"

	self built: false.
	self sections do: [:each | each setBuiltToFalse]
