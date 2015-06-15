class realm::postfix {
  include ::postfix

  $realm_postfix = hiera('realm::postfix',{})

  postfix::config { 'default':
    relay_host => $realm_postfix['relay_host'],
    myorigin   => $realm_postfix['myorigin'],
  }

  postfix::aliases { 'default':
    root_alias => $realm_postfix['root_alias'],
  }
  
  postfix::service { 'default':
    ensure => $realm_postfix['ensure'],
    enable => $realm_postfix['enable'],
  }

}
