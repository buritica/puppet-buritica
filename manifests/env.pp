class buritica::env {
  notice('setting up buritica env')
  include memcached
  include mongodb
  include redis
  include postgresql
  include pow
  include zsh

  # Homebrew Packages
  package {
    [
      'coreutils',
      'direnv',
      'ghi',
      'git-extras',
      'moreutils',
      'ngrep',
      'pstree',
      'tree',
      'speedtest_cli',
      'watch',
      'webkit2png',
      'wget'
    ]:
    ensure => installed
  }

}
