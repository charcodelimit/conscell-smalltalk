printing
storeOn: aStream
	self flag: #ignoreForCoverage.
	aStream nextPutAll: '(ConsCell car: '.
	car storeOn: aStream.
	aStream nextPutAll: ' cdr: '.
	cdr storeOn: aStream.
	aStream nextPut: $)