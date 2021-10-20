actions
createTestMethodsPrintOutput
	" self createTestMethodsPrintOutput "

	| list instance |

	list := self selectors select: [:each | each beginsWith: 'example'].
	instance := self new.
	list do: [:each | 
		Transcript cr; show: each.
		instance createTestMethodPrintOutput: each].
