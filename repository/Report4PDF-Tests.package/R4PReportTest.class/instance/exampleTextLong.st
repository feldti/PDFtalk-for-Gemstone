examples
exampleTextLong
	" self new exampleTextLong saveAndShowAs: 'exampleTextLong.pdf' "

	| report string | 

	report := R4PReport new.
	report pageWidth: 612.
	report pageHeight: 200.
	string := self sampleText1 , self sampleText2 , self sampleText3 , self sampleText4.
	string := string , string , string.
	report page: [:page | page text border: 0.5;  margin: 25; padding: 5; string: string].
	^report
