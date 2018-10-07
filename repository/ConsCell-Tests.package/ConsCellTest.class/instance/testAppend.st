tests
testAppend
	| list1 list2 |
	list1 := #(1 2 3) asCons.
	list2 := #(5 4) asCons.
	self assert: (list1 append: list2) == list1.
	self assert: list1 = #(1 2 3 5 4) asCons.
	self assert: list2 = #(5 4) asCons.
	self assert: (list1 append: list2) == list1.