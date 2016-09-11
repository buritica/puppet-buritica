class buritica::homedropbox {
  notice('setting up personal dropbox links')

  # symlink Documents
  file { '/Users/buritica/Documents':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Documents',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # symlink Downloads
  file { '/Users/buritica/Downloads':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Downloads',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # symlink Desktop
  file { '/Users/buritica/Desktop':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Desktop',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # sync dropbox ssh config
  file { '/Users/buritica/.ssh/config':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Sync/.sshconfig'
  }

}
