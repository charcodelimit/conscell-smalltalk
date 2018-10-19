tests
testNil
	self assert: nil car equals: nil.
	self assert: nil cdr equals: nil.
	self assert: nil arrayForm equals: #().
	self assert: nil topForms equals: #().
	self assert: nil safeTopForms equals: #()