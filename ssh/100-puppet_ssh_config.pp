#!/usr/bin/env puppet
# Puppet manifest to configure SSH client settings

# Set the SSH identity file to ~/.ssh/school
file_line { 'Declare identity file':
  path  => '/etc/ssh/ssh_config',
  line  => 'IdentityFile ~/.ssh/school',
  match => '^IdentityFile',
}

# Disable password authentication
file_line { 'Turn off password authentication':
  path  => '/etc/ssh/ssh_config',
  line  => 'PasswordAuthentication no',
  match => '^PasswordAuthentication',
}
