versions
version19: spec
	<version: '1.9' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.9'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '12/16/2016 13:40'.
		spec 
			project: 'MessagePack' with: '1.2.4';
			project: 'Stick' with: '1.0'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.81';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.35';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.10'.  ].
