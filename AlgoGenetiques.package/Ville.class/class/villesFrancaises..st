as yet unclassified
villesFrancaises: arg1
	| tmp1 |
	tmp1 := RTCityBuilder basicNew initializeCities.
	^ (tmp1 keys
		collect: [ :arg2 | 
			| tmp2 |
			tmp2 := Ville new.
			tmp2
				nom: arg2;
				position: (tmp1 at: arg2).
			tmp2 ]) copyFrom: 1 to: arg1