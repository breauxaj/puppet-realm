class realm::groups {
  include ::users
  
  $realm_groups = hiera('realm::groups',{})
  create_resources('users::add_group',$realm_group)

}
