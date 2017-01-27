class splicr_web {
  case $::kernel {
    'Windows': { include splicr_web::windows}
    'Linux': { include splicr_web::linux }
    'Darwin': { include splicr_web::mac }
  }

}
