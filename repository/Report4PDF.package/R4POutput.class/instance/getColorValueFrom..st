actions
getColorValueFrom: aString
	" 255 = 1 "

	| high low value |
 
	high := (('0123456789abcdef' indexOf: aString first asLowercase) - 1) * 16.
	low := ('0123456789abcdef' indexOf: aString last asLowercase) - 1.
	value := high + low / 255.0 .
	^value
