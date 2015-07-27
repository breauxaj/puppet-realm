class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera_hash('realm::sysctl',{})
  
  $key_array = keys($realm_sysctl)

  sysctl::config { $key_array: }

}
