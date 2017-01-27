class splicr_web::linux {
  include nginx

  nginx::resource::server{'splicrlinux1.inf.puppet.vm':
  www_root => '/opt/html/',
  }

}
