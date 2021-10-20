layout
numberOfColumns
	"includes columnSpan"

	| count |

	count := 0.
	self sections do: [:each |
		count := count + each columnSpan].
	^count
