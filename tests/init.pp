node default {

  notify { 'enduser-before': }
  notify { 'enduser-after': }

  class { 'notifyme':
    require => Notify['enduser-before'],
    before  => Notify['enduser-after'],
  }

}
