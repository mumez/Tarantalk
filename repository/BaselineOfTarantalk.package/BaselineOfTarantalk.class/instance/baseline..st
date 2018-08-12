baseline
baseline: spec
	<baseline>

	spec for: #'common' do: [
		spec 
			project: 'MessagePack' with: [
				spec
					className: #ConfigurationOfMessagePack;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/MessagePack/main/' ];
			project: 'Stick' with: [
				spec
					className: #ConfigurationOfStick;
					versionString: #'stable';
					repository: 'http://smalltalkhub.com/mc/MasashiUmezawa/Stick/main/' ].
		spec 
			package: 'Tarantalk-Core';
			package: 'Tarantalk-Objects';
			package: 'Tarantalk-Tests'.
		spec 
			group: 'Core' with: #('Tarantalk-Core' 'Tarantalk-Objects' );
			group: 'Tests' with: #('Tarantalk-Tests' ). ].
