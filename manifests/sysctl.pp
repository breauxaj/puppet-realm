class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera('realm::sysctl',{})
  create_resources('sysctl::config',$realm_sysctl)

}
