accessing
boxHeightUsedAt: anIndex

	^self boxHeightUsed at: anIndex ifAbsent: [0]
