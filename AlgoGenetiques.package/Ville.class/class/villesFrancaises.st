as yet unclassified
villesFrancaises
	| cities |
	cities := RTCityBuilder new initializeCities.
	^ cities keys
		collect: [ :cityName | 
			| ville |
			ville := Ville new.
			ville nom: cityName.
			ville position: (cities at: cityName).
			ville ]