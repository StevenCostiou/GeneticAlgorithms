algorithm
selectParents
	| parents |
	parents := OrderedCollection new.
	configuration numberOfSelectedParents
		timesRepeat: [ | pere mere |
			pere := population atRandom.
			mere := population atRandom.
			(builder evaluateCost: pere) < (builder evaluateCost: mere)
				ifTrue: [ parents add: pere ]
				ifFalse: [ parents add: mere ] ].
	^ parents