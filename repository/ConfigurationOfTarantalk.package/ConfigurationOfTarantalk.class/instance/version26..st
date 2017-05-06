versions
version26: spec
	<version: '2.6' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.5'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '5/7/2017 00:08'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.5'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.89';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.43';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
