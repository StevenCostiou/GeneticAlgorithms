as yet unclassified
villesFrancaises
	| tmp1 |
	tmp1 := RTCityBuilder basicNew initializeCities.
	^ tmp1 keys
		collect: [ :arg1 | 
			| tmp2 |
			tmp2 := Ville new.
			tmp2
				nom: arg1;
				position: (tmp1 at: arg1).
			tmp2 ]