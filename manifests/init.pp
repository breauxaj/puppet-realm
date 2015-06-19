class realm (
  $label = 'undefined',
) {
  include realm::groups
  include realm::hosts
  include realm::postfix
  include realm::rsyslog
  include realm::ssh
  include realm::ssh_key
  include realm::sudo
  include realm::sysctl
  include realm::users

  file { '/etc/realm':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }

}
