tests - iteration
testCells
	self assert: (ConsCell car: 1) cells equals: (Array with: #(1) asCons).
	self assert: #(1 2) asConsList cells equals: (Array with: #(1 2) asCons with: #(2) asCons).
	self
		assert: #(1 2 #(3)) asCons cells
		equals: (Array with: #(1 2 #(3)) asCons with: #(2 #(3)) asCons with: #(#(3)) asCons)