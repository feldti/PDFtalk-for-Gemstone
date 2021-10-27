examples
exampleTableFinancialData
	" self new exampleTableFinancialData saveAndShowAs: 'exampleTableFinancialData.pdf' "

	| report |
	report := R4PReport new.
	report portrait.
	report page: [:page |
		(page header)
			veryLarge;
			string: 'Table with financial data. Cell are right justified'.
		page table: [:table |
			table
				marginTop: 10;
				cellPadding: 2;
				cellBorder: 0.1.
			table header: [:row |
				row
					right;
					large.
				row cell string: 'Previous'.
				row cell string: 'Current'.
				row cell string: 'Projected'].
			#(#(465295.91 824955.26 333701.38) #(25613.44 895919.86 150115.82) #(885652.98 666044.95 434901.15) #(300721.12 508580.76 170585.91) #(163719.14 62781.38 728099.97) #(96342.96 983326.52 430879.17) #(93206.88 809959.07 452535.72) #(99856.11 950024.64 749059.65) #(611109.24 748459.44 718245.66) #(191767.23 113072.71 718117.90) #(406084.69 645526.72 972223.72)) do: [:eachRow |
				table row: [:row |
					row right.
					eachRow do: [:eachNumber |
						| numberString rst wst |
						numberString := eachNumber asStringUsingFormat: #(4 2 false).
						rst := numberString reverse readStream.
						wst := String new writeStream.
						wst
							nextPutAll: (rst upTo: $.);
							nextPut: $..
						[rst atEnd] whileFalse: [
							wst nextPutAll: (rst next: 3).
							rst atEnd ifFalse: [
								wst nextPut: $,]].
						row cell string: wst contents reverse]]]]].
	^report
