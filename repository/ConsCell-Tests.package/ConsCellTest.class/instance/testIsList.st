tests
testIsList
	| c |
	self assert: (ConsCell car: #a cdr: #b) isList not.
	self assert: (ConsCell car: #a cdr: nil) isList.
	self assert: (ConsCell car: nil cdr: nil) isList.
	self assert: #(1 2 3 4 5) asCons isList.
	c := #(1 2) asCons.
	c append: c.
	self assert: c isList not