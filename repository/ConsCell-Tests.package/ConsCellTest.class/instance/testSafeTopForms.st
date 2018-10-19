tests
testSafeTopForms
	| f |
	f := #(1 2 3 4 #(5 6)) asCons safeTopForms.
	self assert: (f at: 1) equals: 1.
	self assert: (f at: 4) equals: 4.
	self assert: (f at: 5) length equals: 2.
	self assert: (f at: 5) isConsCell.
	f := #(1 2) asCons.
	f append: 3.
	self assert: f safeTopForms equals: #(1 2).
	f := #(1 2) asCons.
	f append: (ConsCell car: nil cdr: 3).
	self assert: f safeTopForms equals: #(1 2 nil)