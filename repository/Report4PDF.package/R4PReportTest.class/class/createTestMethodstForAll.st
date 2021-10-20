actions
createTestMethodstForAll
	" self createTestMethodstForAll "

	| list instance |
	list := self selectors select: [:each | each beginsWith: 'example'].
	instance := self new.
	list do: [:each | instance createAllMethodsFor: each]
