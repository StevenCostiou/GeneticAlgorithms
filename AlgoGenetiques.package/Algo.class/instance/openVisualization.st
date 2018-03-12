visualization
openVisualization
	visu := VoyageurBrowser basicNew.
	visu view: builder view.
	visu progressBar: self progressBar. 
	visu initialize.
	visu startOn: #().
	visu open