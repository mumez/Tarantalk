versions
version13: spec
	<version: '1.3' imports: #('0.1-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'version 1.3'.
		spec author: 'MasashiUmezawa'.
		spec timestamp: '11/14/2016 23:18'.
		spec 
			project: 'MessagePack' with: '1.2.4';
			project: 'Stick' with: '0.9'.
		spec 
			package: 'Tarantalk-Core' with: 'Tarantalk-Core-MasashiUmezawa.74';
			package: 'Tarantalk-Objects' with: 'Tarantalk-Objects-MasashiUmezawa.22'. ].
