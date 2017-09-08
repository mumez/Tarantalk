versions
version30: spec
	<version: '3.0' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 3.0'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '9/8/2017 17:40'.
		spec 
			project: 'MessagePack' with: '1.2.9';
			project: 'Stick' with: '1.7'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.95';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.49';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
