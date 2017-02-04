versions
version23: spec
	<version: '2.3' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.3'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '2/4/2017 23:00'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.3'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.84';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.37';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.10'.  ].
