tests - iteration
testDetectIfNone
	| list |
	list := #(1 3 5 7 9) asConsList.
	self assert: (list detect: [ :elt | elt = 7 ] ifNone: [ nil ]) equals: 7.
	self assert: (list detect: [ :elt | elt \\ 2 = 0 ] ifNone: [ nil ]) isNil