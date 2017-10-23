versions
version31: spec
	<version: '3.1' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 3.1'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '9/18/2017 17:40'.
		spec 
			project: 'MessagePack' with: '1.2.9';
			project: 'Stick' with: '1.7'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.96';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.50';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
