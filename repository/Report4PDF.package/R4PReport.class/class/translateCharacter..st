documentation
translateCharacter: aCharacter
	"using Google docs to spell check adds single and double quotes that we don't want"

	| integer |

	integer := aCharacter asInteger.
	integer = 8216 ifTrue: [^$' ].
	integer = 8217 ifTrue: [^$' ].
	integer = 8220 ifTrue: [^$" ].
	integer = 8221 ifTrue: [^$" ].

	^aCharacter
