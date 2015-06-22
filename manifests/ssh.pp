class realm::ssh {
  include ::ssh

  $realm_ssh = hiera('realm::ssh',{})

  ssh::config { 'default':
    allowed_groups => $realm_ssh['allowed_groups'],
    allowed_users  => $realm_ssh['allowed_users'],
  }

  ssh::issue { 'default':
    message => $realm_ssh['message'],
  }

  ssh::service { 'default':
    ensure => $realm_ssh['ensure'],
    enable => $realm_ssh['true'],
  }

}
