initialization
initialize
	configuration := ProblemConfiguration new.
	model := Ville villesFrancaises: configuration numberOfCities.
	builder := VoyageurMapBuilder basicNew.
	builder countries: RTMapBuilder France.
	bestResult := builder evaluateCost: model.
	bestModel := model.
	running := true.
	progress := 1.
	[ [ running ]
		whileTrue: [ self progressBar value: progress.
			100 milliSeconds wait ] ] fork.
	50 milliSeconds wait.
	[ | resultat |
	startTime := Time now asDuration.
	self start.
	endTime := Time now asDuration.
	resultat := Resultat new.
	resultat
		tempsCalcul: endTime - startTime;
		nombreDePas: self setSteps;
		nombreDeVilles: configuration numberOfCities;
		distance: bestResult;
		algorithme: self class name printString.
	resultat printString inspect.
	running := false.
	self buildView.
	self progressBar delete ] fork