class buritica::brew {
  notice('brewing time')

  $home       = "/Users/${::boxen_user}"
  $my         = "${home}/my"
  $doing      = "${my}/doing"

  notice('setting up buritica homebrew packages')

  # Homebrew Packages
  package {
    [
      'direnv',
      'pstree',
      'watch',
      'git-extras',
      'tree',
      'ghi',
      'postgresql',
      'aircrack-ng',
      'xquartz',
      'speedtest_cli',
      'webkit2png',
      'coreutils',
      'findutils',
      'moreutils'
    ]:
    ensure => installed
  }

  # clone todo repo
  repository { $doing:
    source  => 'buritica/doing',
    require => File[$my]
  }
}
