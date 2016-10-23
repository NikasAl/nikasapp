# exec {
#   "apt-get update":
#   path => "/usr/bin"
# }

exec { 'apt-get-update':
  command     => '/usr/bin/apt-get update',
  refreshonly => true,
}

class { 'postgresql::server':
  ip_mask_deny_postgres_user => '0.0.0.0/32',
  ip_mask_allow_all_users    => '0.0.0.0/0',
  listen_addresses           => '*',
  # ipv4acls                   => ['hostssl all johndoe 192.168.0.0/24 cert'],
  postgres_password          => 'TPSrep0rt!',
}

postgresql::server::db { 'nikasappdb':
  user     => 'commonuser',
  password => postgresql_password('commonuser', 'password'),
}


