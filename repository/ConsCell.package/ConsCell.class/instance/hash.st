comparing
hash
	"Hash is reimplemented because = is implemented."

	| head tail |
	head := (car isConsCell and: [ car isCircular ])
		ifTrue: [ car withCut ]
		ifFalse: [ car ].
	tail := (cdr isConsCell and: [cdr isCircular])
		ifTrue: [ cdr withCut ]
		ifFalse: [ cdr ].
	^ head hash bitXor: tail hash