tests
testCycles
	| c1 c2 |
	c1 := #(1 2) asCons.
	c2 := #(3 4) asCons.
	c1 append: c1.
	self assert: c1 equals: c1.
	self assert: c1 isCircular.
	self assert: c1 cycles size equals: 1.
	self assert: (c1 cycles at: c1) equals: 1.
	c2 append: (ConsCell car: c1 cdr: c2).
	self assert: c1 ~= c2.
	self assert: c2 equals: c2.
	self assert: c2 isCircular.
	self assert: c2 cycles size equals: 2.
	self assert: (c2 cycles at: c1) equals: 1.
	self assert: (c2 cycles at: c2) equals: 2