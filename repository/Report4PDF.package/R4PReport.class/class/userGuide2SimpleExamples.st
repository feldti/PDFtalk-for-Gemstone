user guide text
userGuide2SimpleExamples

	^'!Layout method patterns

Layout sections are added to the report by sending section creation messages to existing sections, starting with a new report instance. For example, to create a new page, with one line of text, you can code...

@	report page string: ''Hello world!''.
@	report page text string: ''Hello world!''.
@	report page text: [:text | text string: ''Hello world!''].

...all of which generate the same output...

>imageStringexample1Gif

If the text needs some formatting, like using a different font that is large and bold, you can code...

@	report page text; courier; bold; large; string: ''Hello world!''.

Since each keyword method returns the layout section it was sent to, you could code without the semicolons... 

@	report page text courier bold large string: ''Hello world!''.

...which is really...

@	((((report page text) courier) bold) large) string: ''Hello world!''.

>imageStringexample2Gif

Sometimes a section will need to have several nested layout sections added. As a convenience, all layouts can be added with a single argument block, with the new layout instance passed as the value. 

@	report page: [:page | 
@		page text courier; bold; large; string: ''Hello world!''.
@		page text string: ''Goodbye''].

>imageStringexample3Gif

This will display a large ''Hello world!'' on the first line, followed by ''Goodbye'' in the default font and size on the next line. If both lines should have the same formatting, we can set the font parameters on the page...

@	report page: [:page |
@		page courier; bold; large.
@		page text string: ''Hello world!''.
@		page text string: ''Goodbye''].

>imageStringexample4Gif

This will display a large ''Hello world!'' on the first line, followed by ''Goodbye'' in Times Roman on the same line. Strings can be concatenated to a text layout with different of fonts...

@	report page: [:page |
@		page courier; bold; large.
@		page text: [:text | 
@			text string: ''Hello world! ''.
@			text string timesRoman; string: ''Goodbye'']].

>imageStringexample5Gif

If the font settings need to apply to the entire report, we can use...

@	report courier; bold; large. "set font parameters here instead of the page"
@	report page: [:page |
@		page text string: ''Hello world!''.
@		page text string: ''Goodbye''].

In practice, report code would be part of some other Smalltalk application, so the layout sections would be passed as values to other build methods, like... 

@	report portrait.
@	page := report page.
@	self buildReportHeader: page.
@	self buildReportContent: page.
@	self buildReportFooter: page.
-
'
