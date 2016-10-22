class buritica::all {
  notice('buritica all')

  include buritica::env
  include buritica::dotfiles
  include buritica::nodejs
  include buritica::basics

  case $::hostname {
    # personal computer
    'crowntail': {
      notice('im crowntail')
      include buritica::apps
      include buritica::homedropbox
      include mongodb
    }
    # public media server
    'rosetail': {
      notice('im rosetail')
      include buritica::tv
    }
  }
}
