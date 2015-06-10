class realm (
  $label = 'undefined',
) {
  include realm::users
  include realm::groups
  include realm::ssh
  include realm::sudo

  file { '/etc/realm':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }
}
