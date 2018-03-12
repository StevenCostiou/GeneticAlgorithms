accessing
start
	model
		permutationsDo: [ :permutation | 
			result := builder evaluateCost: permutation.
			self setResult: result model: permutation ]