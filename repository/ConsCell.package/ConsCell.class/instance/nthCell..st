accessing
nthCell: n
	n isZero
		ifTrue: [ ^ self ].
	cdr ifNil: [ ^ nil ].
	n = 1
		ifTrue: [ ^ cdr ].
	^ cdr nthCell: n - 1