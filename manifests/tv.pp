class buritica::tv {
  notice('setting up tv apps')

  package {[
    'plex-media-server',
   ]:
    provider => 'brewcask',
    install_options => "--appdir=/Applications"
  }



}
