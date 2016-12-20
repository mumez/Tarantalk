versions
version11: spec
	<version: '1.1' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.1'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '11/06/2016 23:11'.
		spec 
			project: 'MessagePack' with: '1.2.3';
			project: 'Stick' with: '0.9'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.69';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.17'. ].
