versions
version12: spec
	<version: '1.2' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.2'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '11/11/2016 23:00'.
		spec 
			project: 'MessagePack' with: '1.2.3';
			project: 'Stick' with: '0.9'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.73';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.21'. ].
