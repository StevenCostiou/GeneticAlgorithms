algorithm
selectParents
	| parents |
	parents := OrderedCollection new.
	configuration numberOfSelectedParents
		timesRepeat: [ | mommy daddy |
			mommy := population atRandom.
			daddy := population atRandom.
			(builder evaluateCost: mommy) < (builder evaluateCost: daddy)
				ifTrue: [ parents add: mommy ]
				ifFalse: [ parents add: daddy ] ].
	^ parents