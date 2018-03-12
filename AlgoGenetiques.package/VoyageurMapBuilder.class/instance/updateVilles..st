as yet unclassified
updateVilles: model
	| route |
	route := model collect: [ :c | Array with: c nom with: c ].
	self routes initialize.
	self view clean.
	cities := route.
	1 to: route size - 1 do: [ :i | self routes from: ((route at: i) at: 1) toAll: (Array with: ((route at: i + 1) at: 1)) ].
	self routes from: (route last at: 1) toAll: (Array with: (route first at: 1)).
	self routes ifRoute: [ :r | r fromCityName = (route first at: 1) ] lineColor: Color red.
	self routes ifRoute: [ :r | r fromCityName = (route last at: 1) ] lineColor: Color blue.
	self routes withPopup: #lengthString.
	self title: (self evaluateCost: model) printString , ' km'.
	self build.
	view signalUpdate