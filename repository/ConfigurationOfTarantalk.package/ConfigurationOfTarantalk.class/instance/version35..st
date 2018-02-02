versions
version35: spec
	<version: '3.5' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 3.5'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '2/2/2018 13:32'.
		spec 
			project: 'MessagePack' with: '1.3.0';
			project: 'Stick' with: '1.7'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.115';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.50';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.11'.  ].
