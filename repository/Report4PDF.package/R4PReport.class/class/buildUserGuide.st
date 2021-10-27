documentation
buildUserGuide
	" R4PReport buildUserGuide "

	| writeStream readStream report |

	report := self new.
	report portrait; pageNumberPattern: '<pageX>'; pageTotalPattern: '<totalX>'; reportTotalPattern: '<reportX>'.  " patterns changes so they can documented "
	writeStream := WriteStream on: self stringClass new.
	writeStream 
		nextPutAll: self userGuide1; 
		nextPutAll: self userGuide2SimpleExamples; 
		nextPutAll: self userGuide3LayoutMethods; 
		nextPutAll: self userGuide4Design; 
		nextPutAll: self userGuide5Note.
	readStream := writeStream contents readStream.

	self buildReport: report from: readStream.

	report saveAndShowAs: 'Report4PDF User Guide.pdf'.
