versions
version28: spec
	<version: '2.8' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.8'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '7/7/2017 13:48'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.6'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.92';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.46';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
