tests
testEquals
	| c1 c2 |
	c1 := ConsCell car: nil cdr: nil.
	c2 := ConsCell car: nil cdr: nil.
	self assert: c1 equals: c2.
	self deny: c1 = #() asCons.
	self deny: c1 = #(1) asCons.
	self assert: c1 hash equals: c2 hash.
	c1 := ConsCell car: #a cdr: nil.
	c2 := ConsCell car: #a cdr: nil.
	self assert: c1 equals: c2.
	self assert: c1 hash equals: c2 hash.
	c1 := #(1 2 3) asCons.
	c2 := ConsCell car: 1 cdr: (ConsCell car: 2 cdr: (ConsCell car: 3 cdr: nil)).
	self assert: c1 equals: c2.
	self deny: c1 = #(1 2 3 4) asCons.
	self assert: c1 hash equals: c2 hash. self deny: c1 hash = #(1 2 3 4) asCons hash