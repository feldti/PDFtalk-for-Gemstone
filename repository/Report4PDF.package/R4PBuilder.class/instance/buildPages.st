build
buildPages
	"for debugging, send #buildPagesX"

	[self buildPagesX]
		on: R4PError
		do: [:ex | self currentPage outputErrorMessage: '*** ERROR building PDF document: ', ex displayString].
