examples
exampleTextLongPageNumberReset
	" self new exampleTextLongPageNumberReset saveAndShowAs: 'exampleTextLongPageNumberReset.pdf' "

	| report | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	report page: [:page | 
		page text border: 0.5;  margin: 25; padding: 5; 
			string: (self sampleText1 , self sampleText2 , self sampleText3 , self sampleText4).
		page footer string: 'Page <page> of <total>, and in report <report>'].
	report page: [:page | 
		page resetPageNumber. 
		page string: 'show have new page number'.
		page text border: 0.5;  margin: 25; padding: 5; 
			string: (self sampleText1 , self sampleText2 , self sampleText3 , self sampleText4).
		page footer string: 'Page <page> of <total>, and in report <report>'].
	^report
