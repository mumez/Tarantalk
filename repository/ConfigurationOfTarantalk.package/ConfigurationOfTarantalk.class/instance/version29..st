versions
version29: spec
	<version: '2.9' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.8'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '8/4/2017 14:00'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.6'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.93';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.48';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
