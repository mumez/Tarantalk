baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self messagePack: spec.
		self stick: spec.
		spec 
			package: 'Tarantalk-Core' with: [spec requires: #('MessagePack' 'Stick')];
			package: 'Tarantalk-Objects';
			package: 'Tarantalk-Tests'.
		spec 
			group: 'default' with: #('Core' 'Tests' );
			group: 'Core' with: #('Tarantalk-Core' 'Tarantalk-Objects' );
			group: 'Tests' with: #('Tarantalk-Tests' ). ].
