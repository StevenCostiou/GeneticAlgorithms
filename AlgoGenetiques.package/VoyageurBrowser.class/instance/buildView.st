hooks
buildView
	| route |
	builder := VoyageurMapBuilder new.
	builder countries: RTMapBuilder France.
	"route := (RouteVoyageur generer: 8)."
	route := Ville villesFrancaises collect: [ :c | Array with: c nom with: c ].
	builder view canvas color: (Color blue alpha: 0.2).
	builder cities: route named: [ :c | c first ].
	builder cities shape
		size: 6;
		fillColor: (Color blue alpha: 0.4).
	builder cities interaction when: TRMouseRightClick do: [ :e | e inspect ].
	builder cities interaction when: TRMouseLeftClick do: [ :e | e inspect ].
	builder cities shape withText: [ :e | e first ] height: 5 color: Color red.
	1 to: route size - 1 do:
		[ :i | builder routes from: (route at: i) first toAll: (Array with: (route at: i + 1) first) ].
	builder routes from: route last first toAll: (Array with: route first first).
	builder routes color: (Color green alpha: 0.7).

	" We set the countries' colors, scale, and pop-up "
	builder color: Color veryVeryLightGray.
	builder scale: 6.
	builder withPopup.
	builder build.
	view := builder view