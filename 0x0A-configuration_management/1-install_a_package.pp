#Install flask / Version must be 2.1.0
exec { 'Install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
   unless => '/usr/bin/pip3 show Flask | grep -q "Version: 2.1.0"',
}

exec { 'install_werkzeug':
  command => '/usr/bin/pip3 install Werkzeug==2.1.1',
  unless => '/usr/bin/pip3 show Werkzeug | grep -q "Version: 2.1.1"',

}