# Create a custom header with puppet
exec {'update':
  provider => shell,
  command  => 'sudo apt-get -y update',
  before   => Exec['install Nginx'],
}

exec {'install Nginx':
  provider => shell,
  command  => 'sudo apt-get -y install nginx',
  before   => Exec['add_header'],
}

exec { 'add_header':
  provider    => shell,
  environment => ["HOST=${hostname}"],
  command     => 'sudo sed -i "s/include \/etc\/nginx\/sites-enabled\/\*;/include \/etc\/nginx\/sites-enabled\/\*;\n\tadd_header X-Served-By \"$HOST\";/" /etc/nginx/nginx.conf',
  before      => Exec['restart Nginx'],
}

exec { 'restart Nginx':
  provider => shell,
  command  => 'sudo service nginx restart',
}

# OR    (combine all the steps above together)
# configures nginx on a server
# exec { 'setup_nginx':
#   provider    => shell,
#   environment => ["HOST=${hostname}"],
#   command     => 'apt-get -y update; apt-get -y install nginx;
#   sudo sed -i "/server {/a add_header X-Served-By $HOSTNAME;" /etc/nginx/sites-available/default;
#   service nginx restart'
# }
