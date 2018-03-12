tests
testUpdate
	[ 1000
		timesRepeat: [ | model |
			50 milliSecond wait.
			model := Ville villesFrancaises shuffled.
			builder updateVilles: model ] ] fork