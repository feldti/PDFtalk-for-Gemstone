examples
exampleBackgroundColorHexTable
	" self new exampleBackgroundColorHexTable saveAndShowAs: 'exampleBackgroundColorHexTable.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page header string: 'http://www.w3schools.com/html/html_colors.asp'.
		page table: [:table | 	
			table cellPadding: 6.
			#(#'000000' #'FF0000' #'00FF00' #'0000FF' #'FFFF00' #'00FFFF' #'FF00FF' #'C0C0C0' #'FFFFFF'
				#'330099' #'333399' #'336699' #'339999' #'33CC99' #'33FF99') 
				do: [:eachColor | 		
					table row cell 
						background: eachColor; 
						width: 300; 
						string: eachColor asString]]].
	^report
