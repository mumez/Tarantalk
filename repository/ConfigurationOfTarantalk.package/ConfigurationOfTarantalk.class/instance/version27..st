versions
version27: spec
	<version: '2.7' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.7'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '5/16/2017 14:55'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.5'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.89';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.44';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
