class buritica::all {
  notice('buritica all')

  include buritica::env
  include buritica::dotfiles
  include buritica::nodejs
  include buritica::apps

  case $::hostname {
    # personal computer
    'crowntail': {
      notice('im crowntail')
      include buritica::homedropbox
    }
  }
}
