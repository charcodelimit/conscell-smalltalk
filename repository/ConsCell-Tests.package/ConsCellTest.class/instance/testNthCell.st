tests
testNthCell
	| l |
	l := #(1 2 3 5 7 11 13) asCons.
	self assert: (l nthCell: 0) equals: #(1 2 3 5 7 11 13) asCons.
	self assert: (l nthCell: 3) equals: #(5 7 11 13) asCons.
	self assert: (l nthCell: -1) equals: nil.
	self assert: (l nthCell: 17) equals: nil.
	self assert: (l nthCell: 0 ifAbsent: [ #t ]) equals: #(1 2 3 5 7 11 13) asCons.
	self assert: (l nthCell: 1 ifAbsent: [ #t ]) equals: #(2 3 5 7 11 13) asCons.
	self assert: (l nthCell: 4 ifAbsent: [ #t ]) equals: #(7 11 13) asCons.
	self assert: (l nthCell: 17 ifAbsent: [ #t ]) equals: #t.
	self assert: (l nthCell: -1 ifAbsent: [ #t ]) equals: #t