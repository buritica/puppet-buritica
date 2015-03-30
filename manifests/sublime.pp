class buritica::sublime {
  notice('setting up buritica sublime text')

  # install app
  # include sublime_text
  package {'sublime-text3': provider => 'brewcask', install_options => "--binarydir=/opt/boxen/bin"}

  # install package control
  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  # install inconsolata font
  package {'font-inconsolata': provider => 'brewcask'}

  # sync sublime text user from dropbox
  file { '/Users/buritica/Library/Application Support/Sublime Text 3/Packages/User':
    ensure  => 'link',
    target  => '/Users/buritica/Dropbox (Personal)/Sync/ST/User/'
  }

}
