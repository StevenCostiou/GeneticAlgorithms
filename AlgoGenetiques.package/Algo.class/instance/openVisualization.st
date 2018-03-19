visualization
openVisualization
	visu := VoyageurBrowser basicNew.
	visu
		view: builder view;
		progressBar: self progressBar;
		initialize;
		startOn: #();
		open