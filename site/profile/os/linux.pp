class splicr::linux {
  nginx::resource::server{'splicrlinux1.inf.puppet.vm':
  www_root => '/opt/html/',
  }
  include nginx

}
