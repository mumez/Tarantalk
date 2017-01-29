versions
version22: spec
	<version: '2.2' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.0'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '1/29/2017 14:00'.
		spec 
			project: 'MessagePack' with: '1.2.4';
			project: 'Stick' with: '1.3'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.83';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.37';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.10'.  ].
