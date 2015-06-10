class realm::ssh {
  include ::users
  
  $realm_ssh_keys = hiera('realm::ssh_keys',{})
  create_resources('users::add_ssh_key',$realm_ssh_keys)

}
