tests
testGet
	| alist |
	alist := #(1 a 2 b 3 c) asCons.
	self assert: (alist get: 2) equals: #b.
	self assert: (alist get: 42) equals: nil