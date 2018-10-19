tests - iteration
testDoWithCell
	| list sum |
	list := #(1 2 3) asCons.
	sum := 0.
	list
		doWithCell: [ :car :cell | 
			sum = 0
				ifTrue: [ self assert: cell equals: list ].
			sum = 5
				ifTrue: [ self assert: cell equals: #(3) asCons].
			sum := sum + car.
			self assert: cell isConsCell.
			self assert: cell car equals: car ].
	self assert: sum equals: 6