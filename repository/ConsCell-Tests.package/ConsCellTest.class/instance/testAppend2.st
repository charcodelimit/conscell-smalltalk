tests
testAppend2
	| l c |
	l := #(1 2) asCons.
	l append2: 3.
	self assert: l cddr == 3.
	l := #(1 2) asCons.
	c := ConsCell car: #a cdr: nil.
	l append2: c.
	self assert: l equals: #(1 2 a) asCons.
	self assert: l third == #a.
	self deny: l cddr == c