versions
version10: spec
	<version: '1.0' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.0'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '10/30/2016 23:39'.
		spec 
			project: 'MessagePack' with: '1.2.3';
			project: 'Stick' with: '0.8'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.65';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.13'. ].
