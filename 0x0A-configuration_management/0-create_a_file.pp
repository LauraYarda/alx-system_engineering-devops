#the coode will create a file name school inside the /tmp directory 
file { '/tmp/school':
  ensure  => file,
  mode    => '07744',
  owner   => 'www-data',
  group   => 'www-data',
  content => 'I love Puppet',
}
