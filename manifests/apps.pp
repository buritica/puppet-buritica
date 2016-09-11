class buritica::apps {
  notice('setting up apps')
  # install brew cask
  include brewcask

  # enable additional cask repos
  exec{'brew tap caskroom/versions':}
  exec{'brew tap caskroom/fonts':}

  package {[
    'alfred',
    'bartender',
    'dropbox',
    'fantastical',
    'font-inconsolata',
    'google-chrome',
    'iterm2',
    'lingo',
    'metabase',
    'nimbus',
    'private-internet-access',
    'reflector',
    'screenhero',
    'skype',
    'sonos',
    'spotify',
    'sublime-text2',
    'whatsapp',
    'zeplin',
   ]:
    provider => 'brewcask',
    install_options => "--appdir=/Applications"
  }

}
