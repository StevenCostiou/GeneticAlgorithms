building
compose
	^ self tabulator
		with: [ :browser | 
			browser row: #progress span: 1.
			browser row: #visualization span: 6.
			browser transmit
				to: #progress;
				andShow: [ :a | a morph morph: progressBar ].
			browser transmit
				to: #visualization;
				andShow: [ :a | a roassal2 initializeView: [ view ] ] ]