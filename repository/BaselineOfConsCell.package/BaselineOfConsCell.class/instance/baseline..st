baseline
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec 
				package: 'ConsCell-Tests' with: [ spec requires: 'ConsCell'];
				package: 'ConsCell'.  
				spec group: 'default' with: #('ConsCell').
				spec group: 'tests' with: #('ConsCell-Tests')
				]