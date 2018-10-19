tests
testObject
	self assert: #a inCons equals: #(a) asCons.
	self assert: 1 inCons equals: #(1) asCons.
	self assert: #a inQuotedCons equals: #(quote a) asCons.
	self assert: #(1 2) asCons inQuotedCons equals: #(quote #(1 2)) asCons