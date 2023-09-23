# this code kills a process & works together with the killmenow file which has already been provided

exec { 'killmenow':
  command     => '/usr/bin/pkill killmenow',
  provider    => 'shell',
  returns     => [0, 1],
}
