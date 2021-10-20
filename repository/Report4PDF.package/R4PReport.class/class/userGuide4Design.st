user guide text
userGuide4Design

	^'!Design
Report4PDF contains four main classes: R4PReport, R4PLayout, R4PBuilder and R4POutput. Basically, layout are added to a report, then a builder is used to arrange the layouts and create the output, which then uses PDF4Smalltalk to build the PDF document. 

The builder iterates over the pages in the report (see R4PBuider>>buildPagesX). An exception handler will write the exception information into the PDF output if an error occurs.  R4PBuider>>buildPageSections processes the layout sections on each page, with each section using double-dispatch to send the appropriate builder method (see implementors of #buildOutput:). 

For each layout section, the build process is very similar.

*check if the section fits
The height of a layout section is calculated prior to this step (see #calculateLayout) so given the current output page''s Y value a layout section can answer whether it fits or not. If it does not fit, a page break is triggered and all of the parent layout sections are notified. This allows each layout section to add content (like a table header) or adjust positioning (like a text top margin) on the next page.

*render the background and border
Rendering order is important. Each rendered output is placed on top of the previous one, so background first, border second, and text last.

*process nested sections
String, line and image layout sections are the only sections that add to the output (aside from backgrounds and borders; see methods in the ''output'' category). Parent sections pass the build sequence down to their nested sections until one of these ''output generating'' sections is reach. For a table, a typical sequence would be: table -> row -> cell -> text -> string.
-
A lot of refactoring involved generalizing this message sequence and removing layout specific code. The intent is to make extending this framework easy. There is one inelegant hack: the report is linked to the builder just to support #includeOnPage: and #excludeOnPage: ... all other message sends to the builder from sections layouts are done to a message argument, as in #buildOutput: 
-

Output from layout sections is added to an instance of R4POutputPage, which holds the current, minimum and maximum Y value. A page break adds a new output page. In some cases a previous output page needs to have more contented added, like the next cell of a row.  See R4PBuilder>>resetCurrentYAfter: .  

R4POutput subclasses are where Report4PDF interfaces with PDF4Smalltalk. See #renderOutput: 
For diagnostics, you can trace the output generated for PDF4Smalltalk using R4PReport>>traceToTranscript, #traceToFile: and #traceAppendTo:

>imageDesign1Gif

-
'
