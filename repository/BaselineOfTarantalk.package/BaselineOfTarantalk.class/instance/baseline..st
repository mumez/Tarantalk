baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self messagePack: spec.
		self stick: spec.
		spec 
			package: 'Tarantalk-Core';
			package: 'Tarantalk-Objects';
			package: 'Tarantalk-Tests'.
		spec 
			group: 'Core' with: #('Tarantalk-Core' 'Tarantalk-Objects' );
			group: 'Tests' with: #('Tarantalk-Tests' ). ].
