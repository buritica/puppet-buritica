class buritica::nodejs {
  notice('setting up nodejs')

  # setup all node versions I need
  class { 'nodejs::global':
    version => '4.5.0'
  }
  nodejs::version {'0.12.15':}
  nodejs::version {'6.4.0':}
  
}
