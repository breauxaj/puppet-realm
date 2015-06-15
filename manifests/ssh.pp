class realm::ssh {
  include ::ssh

  $realm_ssh = hiera('realm::ssh',{})

  ssh::issue { 'default':
    message => $realm_ssh['issue'],
  }

  ssh::service { 'default':
    ensure => $realm_ssh['ensure'],
    enable => $realm_ssh['true'],
  }

}
