class realm::rsyslog {
  include ::rsyslog

  $realm_rsyslog = hiera('realm::rsyslog',{})

  rsyslog::service { 'default':
    ensure => $realm_rsyslog['ensure'],
    enable => $realm_rsyslog['enable'],
  }

  $realm_rsyslog_rule = hiera('realm::rsyslog::rule',{})
  create_resources('rsyslog::rule',$realm_rsyslog_rule)

}
