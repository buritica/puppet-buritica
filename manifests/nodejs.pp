class buritica::nodejs {
  notice('setting up buritica nodejs')
  # include some provided versions
  nodejs::version { 'v0.10.33': }
  nodejs::version { 'v0.10.29': }

  # set the global nodejs version
  class { 'nodejs::global': version => 'v0.10.33' }

  # install some npm modules
  # nodejs::module { 'bower':
  #   node_version => 'v0.10'
  # }
}
