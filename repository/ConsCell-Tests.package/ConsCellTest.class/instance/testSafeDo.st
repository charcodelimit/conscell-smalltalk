tests - iteration
testSafeDo
	| list sum |
	list := #(1 2 3) asCons.
	list := list append: (ConsCell car: list cdr: nil).
	sum := 0.
	list
		safeDo: [ :c | 
			sum := sum
				+
					(c isConsCell
						ifTrue: [ c car ]
						ifFalse: [ c ]) ].
	self assert: sum equals: 7