actions
createTestContentsHexString
	" self createTestContentsHexString "

	| list instance |

	list := self selectors select: [:each | each beginsWith: 'example'].
	instance := self new.
	list do: [:each | 
		Transcript cr; show: each.
		instance createTestContentsHexString: each].
