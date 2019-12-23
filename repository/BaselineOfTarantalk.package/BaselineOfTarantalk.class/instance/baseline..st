baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		self messagePack: spec.
		self stick: spec.
		self taskIt: spec.
		spec 
			package: 'Tarantalk-Core' with: [spec requires: #('MessagePack' 'Stick')];
			package: 'Tarantalk-Objects';
			package: 'Tarantalk-Tests';
			package: 'Tarantalk-TaskIt' with: [spec requires: #('Tarantalk-Core' 'Tarantalk-Objects' 'TaskIt')];
			package: 'Tarantalk-TaskIt-Tests' with: [spec requires: #('Tarantalk-TaskIt')].
		spec 
			group: 'default' with: #('Core' 'Tests' );
			group: 'extra'  with: #('Task' 'Task-Tests');
			group: 'Core' with: #('Tarantalk-Core' 'Tarantalk-Objects' );
			group: 'Task' with: #('Tarantalk-TaskIt' );
			group: 'Task-Tests' with: #('Tarantalk-TaskIt-Tests' );
			group: 'Tests' with: #('Tarantalk-Tests' ). ].
