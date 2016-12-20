versions
version20: spec
	<version: '2.0' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.0'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '12/16/2016 23:50'.
		spec 
			project: 'MessagePack' with: '1.2.4';
			project: 'Stick' with: '1.1'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.82';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.36';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.9'.  ].
