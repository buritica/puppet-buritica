class buritica::env {
  notice('setting up buritica env')
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
      'watch',
      'webkit2png',
      'wget'
    ]:
    ensure => installed
  }

}
