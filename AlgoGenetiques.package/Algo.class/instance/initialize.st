initialization
initialize
	configuration := ProblemConfiguration new.
	model := Ville villesFrancaises: configuration numberOfCities.
	self buildView.
	bestResult := builder evaluateCost: model.
	self openVisualization.
	running := true.
	progress := 1.
	[ [ running ]
		whileTrue: [ self progressBar value: progress.
			1000 milliSeconds wait ] ] fork.
	50 milliSeconds wait.
	[|resultat| startTime := Time now asDuration.
	self start.
	endTime := Time now asDuration.
	resultat := Resultat new.
	resultat tempsCalcul: (endTime - startTime).
	resultat nombreDePas: self setSteps.
	resultat nombreDeVilles: configuration numberOfCities.
	resultat distance: bestResult.
	resultat algorithme: self class name printString.
	resultat printString inspect.
	running := false ] fork