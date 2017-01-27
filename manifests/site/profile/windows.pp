class splicr::windows {

$app_pool = splicr_pool
$app1 = splicr1
$app2 = splicr2

   iis::manage_site {'$::hostname':
    site_path     => 'C:\inetpub\wwwroot\mysite',
    site_id       => '10',
    port          => '8081',
    ip_address    => '*',
    host_header   => 'splicr.inf.puppet.vm',
    app_pool      => '$app_pool'
  }
   iis::manage_virtual_application {'$app1':
    site_name   => 'app1',
    site_path   => 'C:\inetpub\wwwroot\$app1',
    app_pool    => '$app_pool'
  }
   iis::manage_virtual_application {'$app2':
    site_name   => '$app2',
    site_path   => 'C:\inetpub\wwwroot\$app2',
    app_pool    => '$app_pool'
  }
  include iis
}
