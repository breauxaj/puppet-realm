class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera_array('realm::sysctl',{})
  
  create_resources('sysctl::config',$realm_sysctl)

}
