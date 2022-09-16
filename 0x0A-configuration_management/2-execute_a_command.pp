# Execute a command
exec { 'kill killmenow':
command => 'pkill -f killmenow',
path    =>  [ '/bin/', '/sbin/' , '/usr/bin/', '/usr/sbin/' ],
onlyif  => 'pgrep -f killmenow',
}
