examples
exampleBackgroundColorTable
	" self new exampleBackgroundColorTable saveAndShowAs: 'exampleBackgroundColorTable.pdf' "

	| report | 

	report := R4PReport new.
	report portrait.
	report page: [:page | 
		page header string: 'Background color'.
		page table: [:table | 	
			table cellPadding: 6.
			#(gray1 gray2 gray3 gray4 gray5 gray6 gray7 gray8 gray9 gray lightGray darkGray lightRed red darkRed) 
				do: [:eachColor | 		
					table row cell 
						background: eachColor; 
						width: 300; 
						string: eachColor asString].
			table row cell 
						background: #(0.4 0.1 0.9); 
						width: 300; 
						string: #(0.4 0.1 0.9) printString]].
	^report
