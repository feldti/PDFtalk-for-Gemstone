actions
buildAndDisplayAllTestReports
	" self buildAndDisplayAllTestReports "

	| list instance |

	list := self selectors select: [:each | each beginsWith: 'example'].
	instance := self new.
	list do: [:each | 
		Transcript cr; show: each.
		 (instance perform: each) saveAndShowAs: each, '.pdf' ].
