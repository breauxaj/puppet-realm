class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera_hash('realm::sysctl',{})
  
  create_resources('sysctl::configh',$realm_sysctl)

}
