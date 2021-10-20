actions
setOutputColorFromSymbol
	" #FFAA22 --> #(255 176 34) "

	| red green blue | 

	self colorName isSymbol ifFalse: [^false].
	self colorName size = 6 ifFalse: [
		^self reportError: 'Invalid output color symbol. Expected hex string like #FFFFFF: ', self colorName printString].

	red := self getColorValueFrom: (self colorName copyFrom: 1 to: 2).
	green := self getColorValueFrom: (self colorName copyFrom: 3 to: 4).
	blue := self getColorValueFrom: (self colorName copyFrom: 5 to: 6).

	self color: (
		ColorValue 
			red: red 
			green: green
			blue:  blue).

	^true
