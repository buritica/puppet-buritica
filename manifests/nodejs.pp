class buritica::nodejs {
  notice('setting up buritica nodejs')

  # include some provided versions
  # nodejs::version { 'v0.8.26': }
  # nodejs::version { 'v4.2.4': }

  # set the global nodejs version
  # class { 'nodejs::global': version => 'v4.2.4' }

  # install some npm modules
  # nodejs::module { 'bower':
  #   node_version => 'v0.10'
  # }
}
