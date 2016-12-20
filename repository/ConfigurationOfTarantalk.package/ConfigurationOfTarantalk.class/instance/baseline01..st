baselines
baseline01: spec
	<version: '0.1-baseline'>

	spec for: #'common' do: [
		spec blessing: #'baseline'.
		spec repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/Tarantalk/main/'.
		spec 
			project: 'MessagePack' with: [
				spec
					className: #ConfigurationOfMessagePack;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main/'];
			project: 'Stick' with: [
				spec
					className: #ConfigurationOfStick;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/Stick/main/' ].
		spec 
			package: 'Tarantalk-Core';
			package: 'Tarantalk-Objects'.
		spec group: 'Core' with: #('Tarantalk-Core' 'Tarantalk-Objects' ). ].
