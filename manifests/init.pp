class realm (
  $label = 'undefined',
) {
  include realm::groups
  include realm::ssh
  include realm::sudo
  include realm::users

  file { '/etc/realm':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => "${label}",
  }
}
