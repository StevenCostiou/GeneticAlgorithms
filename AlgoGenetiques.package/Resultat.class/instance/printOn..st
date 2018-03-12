printing
printOn: aStream
	aStream nextPutAll: 'Résultat'.
	aStream crtab.
	aStream nextPutAll: '########'.
	aStream crtab.
	aStream nextPutAll: 'Algorithme utilisé : ' , algorithme.
	aStream crtab.
	aStream nextPutAll: 'Nombre de villes : ' , nombreDeVilles printString.
	aStream crtab.
	aStream nextPutAll: 'Meilleure route trouvée : ' , distance truncated printString , ' km'.
	aStream crtab.
	aStream nextPutAll: 'Temps de calcul total : ' , tempsCalcul humanReadablePrintString.
	aStream crtab.
	aStream nextPutAll: 'Nombre de calculs : ' , nombreDePas printString