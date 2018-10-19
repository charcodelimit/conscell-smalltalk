tests
testSafeLength
	| c |
	self assert: #(1 2 3) asCons safeLength equals: 3.
	self assert: (#(1 2) asCons append: 3) safeLength equals: 3.
	c := #(1 2) asCons.
	c append: c.
	self assert: c safeLength isInfinite