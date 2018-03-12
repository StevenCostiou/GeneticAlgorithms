as yet unclassified
villesFrancaises: n
	"Ville villesFrancaises: 1000"
	| cities |
	cities := RTCityBuilder new initializeCities.
	^ (cities keys
		collect: [ :cityName | 
			| ville |
			ville := Ville new.
			ville nom: cityName.
			ville position: (cities at: cityName).
			ville ]) copyFrom: 1 to: n