class realm::timezone {
  include ::clock
  
  $realm_tz = hiera('realm::timezone',{})
  
  clock::tz { 'default':
    timezone => $realm_tz['timezone']
  }

}

