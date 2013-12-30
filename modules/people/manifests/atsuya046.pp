class people::atsuya046 {

	include skype
	include firefox
	include sublime_text_2
	include chrome
	include java
	include python
	include dropbox
	include vagrant
	include mongodb
	include mysql

	package {
		[
			'tmux',
		]:
	}

	package { 'GoogleJapaneseInput':
		source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
		provider => pkgdmg;

	}

	package { 'AndroidStudio':
		source => "http://dl.google.com/android/studio/install/0.3.2/android-studio-bundle-132.893413-mac.dmg",
		provider => appdmg;
	}

	vagrant::plugin { 'vagrant-vmware-fusion':
 	 license => 'puppet:///modules/people/joe/licenses/fusion.lic',
	}

	vagrant::box { 'squeeze64/vmware_fusion':
  		source => 'https://s3.amazonaws.com/github-ops/vagrant/squeeze64-6.0.7-vmware_fusion.box'
	}

	mysql::db { 'mysql': }
}
