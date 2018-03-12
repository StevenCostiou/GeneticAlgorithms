as yet unclassified
evaluateCost: model
	| total |
	total := 0.
	(1 to: model size - 1)
		do: [ :i | 
			| city1 city2 |
			city1 := model at: i.
			city2 := model at: i + 1.
			total := total + (self geoDistanceBetween: city1 position and: city2 position) ].
	^ total