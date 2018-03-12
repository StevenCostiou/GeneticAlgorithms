as yet unclassified
generateFromCsv
	<script>
	| tab rs |
	FrenchCities := Dictionary new.
	tab := OrderedCollection new.
	rs := '/home/steven/villes_utf8.csv' asFileReference readStream.
	rs upTo: Character cr.
	[ rs atEnd ]
		whileFalse: [ | lineStream line |
			lineStream := (rs upTo: Character cr) trim readStream.
			line := OrderedCollection new.
			[ lineStream atEnd ]
				whileFalse: [ lineStream upTo: $;.
					lineStream upTo: $;.
					lineStream upTo: $;.
					line add: (lineStream upTo: $;) trim.
					lineStream upTo: $;.
					lineStream upTo: $;.
					line add: (lineStream upTo: $;) trim.
					line add: (lineStream upTo: $;) trim ].
			tab add: line ].
	((tab
		select: [ :line | 
			line notEmpty
				and: [ | lat long |
					lat := line at: 2.
					long := line at: 3.
					(lat notEmpty and: [ (lat includes: $-) not and: [ lat asNumber > 0.0 ] ])
						and: [ (long notEmpty and: [ (long includes: $-) not and: [ long asNumber > 0 ] ])
								and: [ line first allSatisfy: [ :c | c isAlphaNumeric ] ] ] ] ])
		collect: [ :line | line copyFrom: 1 to: 3 ])
		do:
			[ :line | FrenchCities at: line first put: line second asNumber @ line third asNumber ]