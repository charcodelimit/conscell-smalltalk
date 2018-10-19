accessing
nthcdr: n
	n isZero
		ifTrue: [ ^ self ].
	cdr ifNil: [ ^ nil ].
	n = 1
		ifTrue: [ ^ cdr ].
	^ cdr nthcdr: n - 1