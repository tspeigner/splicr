class splicr_web {
  case $::kernel {
    'windows': {include splicr_web::windows}
    'linux': { include splicr_web::linux }
    'darwin': { include splicr_web::mac }
  }

}
