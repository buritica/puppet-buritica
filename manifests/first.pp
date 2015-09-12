class buritica::first {
  notice('setting up first time installation')

  # install brew cask
  include brewcask

  # enable additional cask repos
  exec{'brew tap caskroom/versions':}
  exec{'brew tap caskroom/fonts':}

  #install dropbox
  # package {'dropbox': provider => 'brewcask'}

  # open dropbox to be configured if it hasn't been installed
  # exec {"dropbox_installed":
  #   command => 'true',
  #   unless => 'test -e ~/.dropbox',
  # }

  # # check if dropbox was installed
  # exec {"dropbox_open":
  #   command => "open /Applications/Dropbox.app",
  #   require => Exec["dropbox_installed"],
  # }

}
