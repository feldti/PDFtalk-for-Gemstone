user guide text
userGuide5Note

	^'!Examples and SUnit Tests

R4PReportTest has 65 examples which were used to develop Report4PDF. For each example corresponding "output" and "pdf" methods are generated. These are snapshots of the example. "Output" is the report content prior to sending it Smalltalk4PDF, and the "pdf" methods are byte arrays of the generated PDF, minus the #CreationDate and #ModDate data. SUnit test methods are generated to check both the output and pdf content, and each method has, as comments, code to recreate the snapshot methods. 

Class side methods are available to create all the test, output and pdf methods.
SUnit code coverage is 60%, with most of the skipped code being exceptions and bad data branches.

:This User Guide
This document was created with Report4PDF using a trivial markup syntax. The first character of each line defines how that line is displayed, with a default of Helvitica size 10.  See the class methods of R4PReport under "documentation".

@	! heading
@	* bullet
@	: bold
@	+ bold and big
@	@ code examples, using Courier
@	- horizontal line
@	> image filename (file in aFolder)

To build the report, use...

@R4PReport>>buildUserGuide
@	" self buildUserGuide "
@
@	| writeStream readStream report |
@
@	report := self new.
@	report portrait; pageNumberPattern: ''<pageX>''; pageTotalPattern: ''<totalX>''.  " patterns changes so they can documented "
@	writeStream := WriteStream on: Core.String new.
@	writeStream 
@		nextPutAll: self userGuide1; 
@		nextPutAll: self userGuide2SimpleExamples; 
@		nextPutAll: self userGuide3LayoutMethods; 
@		nextPutAll: self userGuide4SUnit; 
@		nextPutAll: self userGuide5Note.
@	readStream := writeStream contents readStream.
@
@	self buildReport: report from: readStream.
@
@	report saveAndShowAs: ''Report4PDF User Guide.pdf''.

Each line of the readStream is iterated over. The first character is checked for a formatting code. A new report page is answered if ! is the code, otherwise the current page is used.

@R4PReport>>buildReport: aReport page: aPage line: aString
@
@	| tag string | 
@
@	aString isEmpty ifTrue: [aPage cr. ^aPage].
@
@	tag := aString first.
@	string := aString copyFrom: 2 to: aString size.
@	tag = $! ifTrue: [^self buildReport: aReport newPage: string].
@	tag = $> ifTrue: [^self buildImage: string page: aPage].
@	tag = $: ifTrue: [aPage text bold string: string. ^aPage].
@	tag = $+ ifTrue: [aPage text bold large string: string. ^aPage].
@	tag = $@ ifTrue: [aPage text marginLeft: 10; courier; small; string: string. ^aPage].
@	tag = $- ifTrue: [aPage horizontalLine. ^aPage].
@	tag = $* ifTrue: [aPage bullet string: string. ^aPage].
@
@	aPage string: aString.
@	^aPage 

-
Diagrams were created with Google Docs, exported as JPG files, then cropped and saved as GIFs with IrfanView, and stored as byte arrays (Seaside file methods are used to build the byte array methods).  
In this case, a GIF renders more cleanly than a JPG.

For support please use the forum at http://pdf4smalltalk.origo.ethz.ch/forum (due to change soon)
-
'
