tests
testTopForms
	| f a |
	f := #(1 2 3 4 #(5 6)) asCons topForms.
	self assert: (f at: 1) equals: 1.
	self assert: (f at: 4) equals: 4.
	self assert: (f at: 5) length equals: 2.
	self assert: (f at: 5) isConsCell.
	self should: [ (#(1 2) asCons append: 3) topForms ] raise: Error.
	a := #(1 2 3 4 #(5 6)) asCons arrayForm.
	self assert: (a at: 1) equals: 1.
	self assert: (a at: 4) equals: 4.
	self assert: (a at: 5) size equals: 2.
	self assert: (a at: 5) isArray.
	self assert: a ~= f