coverage
selectorsToBeIgnored
	| printing special |
	printing := #(#printOn: #printOn:forLisp: #printOn:depth:forLisp:level:maxLevel:length:maxLength: #done:cycles: #fullPrintStringForLisp:).
	special := #(#storeOn: #storeTopFormsIn: #safeStoreTopFormsIn:).
	^ super selectorsToBeIgnored , printing , special