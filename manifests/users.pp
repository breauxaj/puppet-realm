class realm::users {
  include ::users
  
  $realm_users = hiera('realm::users',{})
  create_resources('users::add_user',$realm_users)

}
