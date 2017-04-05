versions
version24: spec
	<version: '2.4' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.4'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '4/5/2017 22:47'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.4'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.84';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.39';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.10'.  ].
