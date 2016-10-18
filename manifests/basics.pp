class buritica::basics {
  notice('setting up basic apps')
  # install brew cask
  include brewcask
  include zsh

  # Homebrew Packages
  package {
    [
      'coreutils',
      'moreutils',
      'wget'
    ]:
    ensure => installed
  }

  # enable additional cask repos
  exec{'brew tap caskroom/versions':}
  exec{'brew tap caskroom/fonts':}

  package {[
    'alfred',
    'atom',
    'iterm2',
    'sublime-text2',
   ]:
    provider => 'brewcask',
    install_options => "--appdir=/Applications"
  }



}
