class buritica::apps {
  notice('setting up first time installation')
  include chrome::canary

  package {'cloudup': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'alfred': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'minecraft': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'spotify': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'limechat': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'imageoptim': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'iterm2': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'vlc': provider => 'brewcask', install_options => "--appdir=/Applications"}
  package {'vmware-fusion': provider => 'brewcask', install_options => "--appdir=/Applications"}

  # package {'totalfinder': provider => 'brewcask', install_options => "--appdir=/Applications"}

  exec {'brew cask alfred link':
    require => Package['alfred']
  }

}
