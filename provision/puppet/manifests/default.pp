Exec
{
	path => ["/usr/bin", "/bin", "/usr/sbin", "/sbin", "/usr/local/bin", "/usr/local/sbin"]
}

exec
{
    'apt-get update':
        command => '/usr/bin/apt-get update'
}

group { "puppet":
	ensure => "present",
}

class { 'java':
	distribution => 'jre',
}

class { 'nodejs':
  version => 'lts',
}