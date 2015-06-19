class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera('realm::sysctl',{})

}
