tests
testLastCdr
	| l |
	l := #(1 2 3) asCons.
	self assert: l isList.
	self assert: (l nthcdr: 3) equals: nil.
	l lastCdr: 4.
	self assert: l isList not.
	self assert: (l nthcdr: 3) equals: 4