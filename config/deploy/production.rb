server '172.31.32.48', user: 'app', roles: %w{app db web}
set :ssh_options, keys: '/Users/takuya/.ssh/id_rsa'