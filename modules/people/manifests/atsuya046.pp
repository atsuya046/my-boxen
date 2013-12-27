class people::atsuya046 {

	include skype
	include firefox
	include sublime_text_2
	include chrome
	include java
	include python
	include dropbox

	package {
		[
			'tmux',
		]:
	}

	package { 'GoogleJapaneseInput':
		source => "http://dl.google.com/japanese-ime/latest/GoogleJapaneseInput.dmg",
		provider => pkgdmg;

	}

}
