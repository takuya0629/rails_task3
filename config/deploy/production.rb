server '3.114.150.178', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/takuya/.ssh/id_rsa'