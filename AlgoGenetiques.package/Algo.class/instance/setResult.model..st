algorithm
setResult: evaluatedResult model: evaluatedModel
	self progress.
	evaluatedResult < bestResult
		ifTrue: [ bestResult := evaluatedResult.
			bestModel := evaluatedModel shallowCopy ]