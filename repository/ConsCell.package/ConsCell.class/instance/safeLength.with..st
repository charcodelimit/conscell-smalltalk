accessing
safeLength: aNumber with: anIdentitySet
	cdr isNil
		ifTrue: [ ^ aNumber ].
	cdr isConsCell
		ifFalse: [ ^ aNumber + 1 ].
	(anIdentitySet includes: cdr)
		ifTrue: [ ^ Float infinity ].
	anIdentitySet add: self.
	^ cdr safeLength: aNumber + 1 with: anIdentitySet