class buritica::env {
  notice('setting up buritica env')

  # Homebrew Packages
  package {
    [
      'direnv',
      'ghi',
      'git-extras',
      'ngrep',
      'pstree',
      'tree',
      'watch',
      'webkit2png',
    ]:
    ensure => installed
  }

}
