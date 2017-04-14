versions
version25: spec
	<version: '2.5' imports: #('0.2-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 2.5'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '4/15/2017 02:07'.
		spec 
			project: 'MessagePack' with: '1.2.5';
			project: 'Stick' with: '1.5'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.87';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.42';
			package: 'Tarantalk-Tests' with: 'Tarantalk-Tests-MasashiUmezawa.10'.  ].
