class notifyme::params {

  $text     = 'hello world'
#  $method   = 'email'
#  $method   = 'console'
  $method   = 'wall'


  case $::osfamily {
    'RedHat': {
      notify { "hello world": }
    }
    'Suse': {
      notify { "hello world": }
    }
    'FreeBSD': {
      notify { "hello world": }
    }
    'Archlinux': {
      notify { "hello world": }
    }
    'Solaris': {
      notify { "hello world": }
    }
    default: {
      notify { "hello world": }
    }
  }
}
