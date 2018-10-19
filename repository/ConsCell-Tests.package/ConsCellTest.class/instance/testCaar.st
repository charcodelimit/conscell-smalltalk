tests
testCaar
	| c |
	c := ConsCell caar: 1.
	self assert: c equals: #(#(1)) asCons.
	self assert: c caar equals: 1.
	self assert: c cdar equals: nil.