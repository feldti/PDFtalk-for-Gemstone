printing
displayLayoutExtent

	^[self displayLayoutWidth, ' @ ', self displayLayoutHeight]
		on: self errorClass
		do: [:ex | '<?@?>']
