visualization
progressBar
	^ progressBar
		ifNil: [ progressBar := ProgressBarMorph from: 1 to: self setSteps + 1.
			progressBar extent: 600 @ 100.
			progressBar openInWorld.
			progressBar ]