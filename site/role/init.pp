class splicr {
  case $::kernel {
    'Windows': { include splicr::windows }
    'Linux': { include splicr::linux }
    'Darwin': { include splicr::mac }
  }

}
