class buritica::all {
  notice('buritica all')

  include buritica::env
  include buritica::dotfiles
  include buritica::nodejs

  case $::hostname {
    # personal computer
    'crowntail': {
      notice('im crowntail')
      include buritica::apps
      include buritica::homedropbox
      include mongodb
    }
  }
}
