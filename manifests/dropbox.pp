class buritica::dropbox {
  notice('setting up buritica dropbox links')

  # symlink Dropbox
  file { '/Users/buritica/Dropbox':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox (Personal)',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # symlink Documents
  file { '/Users/buritica/Documents':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox (Personal)/Documents',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # symlink Downloads
  file { '/Users/buritica/Downloads':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox (Personal)/Downloads',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # symlink Desktop
  file { '/Users/buritica/Desktop':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox (Personal)/Desktop',
    ignore  => ['.DS_Store'],
    backup  => false
  }

  # symlink Ride
  file { '/Users/buritica/Ride':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Ride',
    backup  => false
  }

  # symlink Scanned
  file { '/Users/buritica/Scanned':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Documents/Scanned',
    backup  => false
  }

  # sync dropbox ssh config
  file { '/Users/buritica/.ssh/config':
    ensure  => symlink,
    force   => true,
    target  => '/Users/buritica/Dropbox/Sync/.sshconfig'
  }

}
