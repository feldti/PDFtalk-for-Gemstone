actions
createNextPageOutput

	| next |

	next := self class new.
	self nextPage: next.
	next previousPage: self.
	^next
