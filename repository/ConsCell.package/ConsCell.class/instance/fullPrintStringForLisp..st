printing
fullPrintStringForLisp: aLisp
	self flag: #ignoreForCoverage.
	^ String streamContents: [ :s | self printOn: s forLisp: aLisp ]