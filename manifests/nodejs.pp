class buritica::nodejs {
  notice('setting up buritica nodejs')

  # include some provided versions
  nodejs::version { 'v0.10.34': }
  nodejs::version { 'v0.12.1': }

  # set the global nodejs version
  class { 'nodejs::global': version => 'v0.10.34' }

  # install some npm modules
  # nodejs::module { 'bower':
  #   node_version => 'v0.10'
  # }
}
