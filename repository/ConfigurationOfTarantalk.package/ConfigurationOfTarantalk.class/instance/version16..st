versions
version16: spec
	<version: '1.6' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.6'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '12/05/2016 17:50'.
		spec 
			project: 'MessagePack' with: '1.2.4';
			project: 'Stick' with: '0.9'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.79';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.29';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.8'.  ].
