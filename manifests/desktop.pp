class buritica::desktop {
  notice('setting up buritica desktop apps')

  include alfred
  include brewcask
  include chrome::canary
  include imageoptim
  include iterm2::stable
  include memcached
  include mongodb
  include pgadmin3
  include pow
  include redis
  include virtualbox
  include vlc
  include vmware_fusion
  include wget
  include xquartz
  include zsh

  exec{'brew tap caskroom/fonts':}

  # cask applications
  package {'cloudup': provider => 'brewcask', install_options => "--appdir='/Applications'"}
  package {'fantastical': provider => 'brewcask', install_options => "--appdir='/Applications'"}
  package {'moom': provider => 'brewcask', install_options => "--appdir='/Applications'"}
  package {'utorrent': provider => 'brewcask', install_options => "--appdir='/Applications'"}
  # package {'totalfinder': provider => 'brewcask', install_options => "--appdir='/Applications'"}
  package {'limechat': provider => 'brewcask', install_options => "--appdir='/Applications'"}

  # fonts
  package {'font-inconsolata': provider => 'brewcask', install_options => "--appdir='/Applications'"}

  exec {'brew cask alfred link':}

  # other home folders
  file { '/Users/buritica/Torrents':
    ensure  => directory
  }
}
