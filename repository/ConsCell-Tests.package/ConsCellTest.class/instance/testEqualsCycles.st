tests
testEqualsCycles
	| c1 c2 |
	c1 := #(1 2.0 3 #(a b)) asCons.
	c1 append: c1.
	c2 := #(1 2.0 3 #(a b)) asCons.
	c2 append: c2.
	self assert: c1 equals: c2.
	self assert: c1 hash equals: c2 hash.
	c1 := #(1 2.0 3 #(a b)) asCons.
	c1 append: c1.
	c2 := #(1 2.0 3 #(a b)) asCons.
	c2 append: c1.
	self deny: c1 = c2.
	self deny: c1 hash = c2 hash.
