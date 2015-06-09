class realm::users {
  include ::users
  
  $realm_users = hiera('realm::users',{})
  create_resources('realm::users',$realm_users)

}
