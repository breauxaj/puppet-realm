class realm (
  $label = 'undefined',
) {
  include realm::groups
  include realm::ssh_key
  include realm::sudo
  include realm::users
  include realm::rsyslog
  include realm::postfix

  file { '/etc/realm':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }

}
