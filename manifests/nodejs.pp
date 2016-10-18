class buritica::nodejs {
  notice('setting up nodejs')

  # setup main nodejs version
  class { 'nodejs::global':
    version => '4.5.0'
  }

}
