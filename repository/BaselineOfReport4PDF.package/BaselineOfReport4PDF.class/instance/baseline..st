other
baseline: spec 
	<baseline>
	spec
		for: #'gemstone'
		do: [
			"Now the actual delivered packages"
			spec
				package: 'Report4PDF';
				yourself.

			"Now the names for more specific loading"
			spec
				group: 'default' with: #('Report4PDF');
				yourself
		]
