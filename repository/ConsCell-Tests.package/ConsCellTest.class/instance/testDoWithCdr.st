tests - iteration
testDoWithCdr
	| list sum1 sum2 |
	list := #(1 2 3) asCons.
	sum1 := 0.
	sum2 := 0.
	list
		doWithCdr: [ :car :cdr | 
			sum1 := sum1 + car.
			sum2 := sum2 + (cdr car ifNil: [ 0 ]) ].
	self assert: sum1 equals: 6.
	self assert: sum2 equals: 5.