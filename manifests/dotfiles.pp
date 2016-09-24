class buritica::dotfiles {
  notice('setting up buritica dotfiles')

  $home       = "/Users/${::boxen_user}"
  $my         = "${home}/my"
  $dotfiles   = "${my}/dotfiles"
  $ohmyzsh    = "${my}/oh-my-zsh"
  $zshrc      = "${home}/.zshrc"
  $doing      = "${my}/doing"
  $rsync_dots = 'rsync --exclude ".git/" \
                  --exclude ".DS_Store" \
                  --exclude "bootstrap.sh" \
                  --exclude "README.md" \
                  --exclude ".aliases" \
                  --exclude ".exports" \
                  --exclude ".functions" \
                  --exclude "buritica.itermcolors" \
                  --exclude ".osx" \
                  -avh --no-perms . ~;'

  notice('bring on the dotfiles')

  file { $my:
    ensure  => directory
  }

  # clone my dotfiles
  repository { $dotfiles:
    source  => 'buritica/dotfiles',
    require => File[$my]
  }

  # get oh-my-zsh
  repository { $ohmyzsh:
    source  => 'robbyrussell/oh-my-zsh',
    require => File[$my]
  }

  # refresh the dotfiles repository
  exec { 'git pull':
    cwd => $dotfiles
  }

  # sync relevant dotfiles excluding the ones we
  # source ourselves in .zshrc to keep things clean
  exec { 'rsync dotfiles':
    command  => $rsync_dots,
    cwd      => $dotfiles
  }

  # clone todo repo
  repository { $doing:
    source  => 'buritica/doing',
    require => File[$my]
  }

}
