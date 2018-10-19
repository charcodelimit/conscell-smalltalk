coverage
selectorsToBeIgnored
	| printing |
	printing := #(#printOn: #printOn:forLisp: #printOn:depth:forLisp:level:maxLevel:length:maxLength: #done:cycles: #fullPrintStringForLisp:).
	^ super selectorsToBeIgnored , printing