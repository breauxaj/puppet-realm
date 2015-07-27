class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera_hash('realm::sysctl',{})
  
  create_resources('sysctl::config',$realm_sysctl)

}
