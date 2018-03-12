algorithm
setResult: value model: aModel
	self progress.
	value < bestResult
		ifTrue: [ bestResult := value.
			builder updateVilles: aModel ]