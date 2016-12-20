versions
version17: spec
	<version: '1.7' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.7'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '12/09/2016 15:50'.
		spec 
			project: 'MessagePack' with: '1.2.4';
			project: 'Stick' with: '0.9'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.80';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.31';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.8'.  ].
