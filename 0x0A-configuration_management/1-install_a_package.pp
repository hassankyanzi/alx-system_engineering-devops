# Define package names and versions
$flask_version = '2.1.0'
$werkzeug_version = '2.1.1'

# Install Flask
package { 'python3-pip':
  ensure   => installed,
}

package { 'python3-dev':
  ensure   => installed,
}

package { 'build-essential':
  ensure   => installed,
}

package { 'libssl-dev':
  ensure   => installed,
}

package { 'libffi-dev':
  ensure   => installed,
}

package { 'python3-setuptools':
  ensure   => installed,
}

package { 'python3-wheel':
  ensure   => installed,
}

package { 'python3-flask':
  ensure   => $flask_version,
  provider => 'pip3',
}

# Install Werkzeug
package { 'python3-werkzeug':
  ensure   => $werkzeug_version,
  provider => 'pip3',
}
