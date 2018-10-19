tests
testNthCdr
	| l |
	l := #(1 2 3 5 7 11 13) asCons.
	self assert: (l nthcdr: 1) equals: l cdr.
	self assert: (l nthcdr: 2) equals: l cddr.
	self assert: (l nthcdr: 6) equals: l last.
	self assert: (l nthcdr: 1) equals: #(2 3 5 7 11 13) asCons.
	self assert: (l nthcdr: -1) equals: nil.
	self assert: (l nthcdr: 17) equals: nil.
	self assert: (l nthcdr: 3 ifAbsent: [ #t ]) equals: #(5 7 11 13) asCons.
	self assert: (l nthcdr: -1 ifAbsent: [ #t ]) equals: #t.
	self assert: (l nthcdr: 17 ifAbsent: [ #t ]) equals: #t