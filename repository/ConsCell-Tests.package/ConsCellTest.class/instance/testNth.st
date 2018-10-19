tests
testNth
	| l |
	l := #(1 2 3 5 7 11 13) asCons.
	self assert: (l nth: 0) equals: l car.
	self assert: (l nth: 1) equals: l cadr.
	self assert: (l nth: 2) equals: l third.
	self assert: (l nth: 3) equals: 5.
	self assert: (l nth: 6) equals: l last car.
	self assert: (l nth: -1) equals: nil.
	self assert: (l nth: 17) equals: nil.
	self assert: (l nth: 3 ifAbsent: [ 4 ]) equals: 5.
	self assert: (l nth: 17 ifAbsent: [ 4 ]) equals: 4.
	self assert: (l nth: -1 ifAbsent: [ 4 ]) equals: 4.
