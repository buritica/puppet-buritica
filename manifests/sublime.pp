class buritica::sublime {
  notice('setting up buritica sublime text')

  # install app
  include sublime_text

  # install package control
  sublime_text::package { 'Package Control':
    source => 'wbond/sublime_package_control'
  }

  # sync sublime text user folder if it
  # exists in dropbox
  file { '/Users/buritica/Library/Application Support/Sublime Text 3/Packages/User':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Sync/ST/User'
  }

}
