class realm::sysctl {
  include ::sysctl

  $realm_sysctl = hiera('realm::sysctl',{})
  $sysctl_keys = keys($realm_sysctl)
  
  sysctl::config { $sysctl_keys:
    value => $sysctl_keys[$name],
  }
  
  #create_resources('sysctl::config',$realm_sysctl)

}
