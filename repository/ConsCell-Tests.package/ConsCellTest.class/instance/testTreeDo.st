tests - iteration
testTreeDo
	| l c |
	l := #(#(1 #(2 3)) #(4 #(5 6))) asCons.
	c := OrderedCollection new.
	l treeDo: [ :elt | c add: elt ].
	self assert: c size equals: 10.
	self assert: (c at: 4) equals: #(2 3) asCons.
	self assert: (c at: 5) equals: #(3) asCons.
	self assert: (c at: 6) equals: #(#(4 #(5 6))) asCons.
	self assert: (c at: 10) equals: #(6) asCons