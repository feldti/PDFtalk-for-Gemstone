documentation
buildReport: aReport page: aPage line: aString

	| tag string | 

	aString isEmpty ifTrue: [aPage cr. ^aPage].

	tag := aString first.
	string := aString copyFrom: 2 to: aString size.
	tag = $! ifTrue: [^self buildReport: aReport newPage: string].
	tag = $> ifTrue: [^self buildImage: string page: aPage].
	tag = $: ifTrue: [aPage text bold string: string. ^aPage].
	tag = $+ ifTrue: [aPage text bold large string: string. ^aPage].
	tag = $@ ifTrue: [aPage text marginLeft: 10; courier; small; string: string. ^aPage].
	tag = $- ifTrue: [aPage horizontalLine. ^aPage].
	tag = $* ifTrue: [aPage bullet string: string. ^aPage].

	aPage string: aString.
	^aPage
