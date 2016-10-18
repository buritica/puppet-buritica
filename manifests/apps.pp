class buritica::apps {
  notice('setting up apps')

  package {[
    'bartender',
    'dropbox',
    'fantastical',
    'font-inconsolata',
    'google-chrome',
    'lingo',
    'metabase',
    'nimbus',
    'reflector',
    'screenhero',
    'sketch',
    'skype',
    'sonos',
    'spotify',
    'whatsapp',
    'zeplin',
   ]:
    provider => 'brewcask',
    install_options => "--appdir=/Applications"
  }

}
