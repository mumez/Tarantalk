versions
version33: spec
	<version: '3.3' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 3.3'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '12/14/2017 15:40'.
		spec 
			project: 'MessagePack' with: '1.3.0';
			project: 'Stick' with: '1.7'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.113';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.50';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
